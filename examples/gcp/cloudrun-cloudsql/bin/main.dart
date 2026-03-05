// ignore_for_file: unused_import
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_gcp/pulumi_gcp.dart' as gcp;

class ExampleStack extends pulumi.Stack {
  ExampleStack() {
    final config = pulumi.Config();
    final gcpConfig = pulumi.Config('gcp');

    final dbPassword = config.require('db-password');
    final dbName = config.require('db-name');
    final project = gcpConfig.require('project');
    final region = gcpConfig.require('region');
    const cloudSqlInstanceName = 'my-cloud-sql-instance';
    final cloudSqlConnectionName = '$project:$region:$cloudSqlInstanceName';

    final cloudSqlInstance = gcp.sql.DatabaseInstance(
      'my-cloud-sql-instance',
      args: gcp.sql.DatabaseInstanceArgs(
        name: cloudSqlInstanceName.output(),
        databaseVersion: 'POSTGRES_12'.output(),
        deletionProtection: false.output(),
        settings: gcp.sql
            .DatabaseInstanceSettings(tier: 'db-f1-micro'.output())
            .output(),
      ),
    );

    gcp.sql.Database(
      'database',
      args: gcp.sql.DatabaseArgs(
        instance: cloudSqlInstance.name,
        name: dbName.output(),
      ),
    );

    final cloudRunEnvironment =
        'postgres://$dbName:$dbPassword@/$dbName?host=/cloudsql/$cloudSqlConnectionName';

    gcp.sql.User(
      'users',
      args: gcp.sql.UserArgs(
        name: dbName.output(),
        instance: cloudSqlInstance.name,
        password: pulumi.secret(dbPassword).apply((value) => value as String),
      ),
    );

    final cloudRun = gcp.cloudrun.Service(
      'default-service',
      args: gcp.cloudrun.ServiceArgs(
        location: region.output(),
        template: gcp.cloudrun
            .ServiceTemplate(
              metadata: gcp.cloudrun
                  .ServiceTemplateMetadata(
                    annotations: {
                      'run.googleapis.com/cloudsql-instances':
                          cloudSqlConnectionName,
                    }.output(),
                  )
                  .output(),
              spec: gcp.cloudrun
                  .ServiceTemplateSpec(
                    containers: [
                      gcp.cloudrun.ServiceTemplateSpecContainer(
                        image: 'gcr.io/cloudrun/hello'.output(),
                        envs: [
                          gcp.cloudrun.ServiceTemplateSpecContainerEnv(
                            name: 'DATABASE_URL'.output(),
                            value: cloudRunEnvironment.output(),
                          ),
                        ].output(),
                      ),
                    ].output(),
                  )
                  .output(),
            )
            .output(),
        traffics: [
          gcp.cloudrun.ServiceTraffic(
            latestRevision: true.output(),
            percent: 100.output(),
          ),
        ].output(),
      ),
    );

    registerOutputs({
      'cloud_sql_instance_name': cloudSqlInstance.name,
      'cloud_run_url': cloudRun.statuses.apply((statuses) {
        if (statuses.isEmpty) {
          return '';
        }
        return (statuses[0]['url'] as String?) ?? '';
      }),
    });
  }
}

Future<void> main() async {
  await pulumi.Deployment.run(() => ExampleStack());
}
