import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_sql_args.dart';
import 'get_database_sql_result.dart';

/// Use this data source to get information about a database in a Cloud SQL instance.
Future<GetDatabaseSqlResult> getDatabaseSql(
  GetDatabaseSqlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getDatabase:getDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseSqlResult.fromMap(result);
}
