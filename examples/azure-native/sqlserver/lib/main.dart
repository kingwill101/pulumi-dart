import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_azure_native/sql.dart' as sql;
import 'package:pulumi_random/pulumi_random.dart' as random;

class AzureNativeSqlServerStack extends pulumi.Stack {
  AzureNativeSqlServerStack() : super() {
    final resourceGroup = resources.ResourceGroup('resourceGroup');

    final password = random.index.RandomPassword(
      'admin-password',
      args: random.index.RandomPasswordArgs(length: 20.output()),
    );

    final server = sql.Server(
      'server',
      args: sql.ServerArgs(
        administratorLogin: 'admin-user'.output(),
        administratorLoginPassword: password.result,
        resourceGroupName: resourceGroup.name,
        serverName: pulumi.Deployment.instance.stackName.output(),
        minimalTlsVersion: '1.2'.output(),
        publicNetworkAccess: 'Enabled'.output(),
      ),
    );

    sql.Database(
      'db',
      args: sql.DatabaseArgs(
        databaseName: 'database'.output(),
        serverName: server.name,
        collation: 'SQL_Latin1_General_CP1_CI_AI'.output(),
        resourceGroupName: resourceGroup.name,
        sku: sql.Sku(
          capacity: 2.output(),
          family: 'Gen5'.output(),
          name: 'GP_S'.output(),
        ).output(),
      ),
    );

    final serverName = server.name.apply<String>(
      (name) => '$name.database.windows.net',
    );

    registerOutputs(<String, pulumi.Output<dynamic>>{'serverName': serverName});
  }
}
