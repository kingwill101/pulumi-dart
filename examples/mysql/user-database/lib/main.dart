import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_mysql/index.dart' as mysql;

class MysqlUserDatabaseStack extends pulumi.Stack {
  MysqlUserDatabaseStack() : super() {
    final config = pulumi.Config();
    final databaseName = config.get('databaseName') ?? 'pulumi_app';
    final username = config.get('username') ?? 'pulumi_user';
    final host = config.get('host') ?? '%';
    final password = config.require('password');

    final database = mysql.Database(
      'app-database',
      args: mysql.DatabaseArgs(name: databaseName.output()),
    );

    final user = mysql.User(
      'app-user',
      args: mysql.UserArgs(
        user: username.output(),
        host: host.output(),
        plaintextPassword: password.output(),
      ),
    );

    mysql.Grant(
      'app-user-grant',
      args: mysql.GrantArgs(
        database: database.name,
        user: user.user,
        host: user.host.apply((v) => v!),
        table: '*'.output(),
        privileges: ['SELECT', 'INSERT', 'UPDATE', 'DELETE'].output(),
      ),
    );

    registerOutputs({
      'database': database.name,
      'username': user.user,
      'host': user.host,
    });
  }
}
