import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_postgresql/index.dart' as postgresql;

class PostgresqlRoleDatabaseStack extends pulumi.Stack {
  PostgresqlRoleDatabaseStack() : super() {
    final config = pulumi.Config();
    final roleName = config.get('roleName') ?? 'pulumi_app';
    final databaseName = config.get('databaseName') ?? 'pulumi_app_db';

    final role = postgresql.Role(
      'app-role',
      args: postgresql.RoleArgs(name: roleName.output(), login: true.output()),
    );

    final database = postgresql.Database(
      'app-database',
      args: postgresql.DatabaseArgs(
        name: databaseName.output(),
        owner: role.name,
      ),
    );

    postgresql.Grant(
      'app-database-connect',
      args: postgresql.GrantArgs(
        database: database.name,
        role: role.name,
        objectType: 'database'.output(),
        privileges: ['CONNECT'].output(),
      ),
    );

    registerOutputs({'role': role.name, 'database': database.name});
  }
}
