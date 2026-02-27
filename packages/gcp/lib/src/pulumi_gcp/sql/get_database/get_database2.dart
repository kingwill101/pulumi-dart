import 'package:pulumi/pulumi.dart';
import 'get_database_args2.dart';
import 'get_database_result2.dart';

/// Use this data source to get information about a database in a Cloud SQL instance.
Future<GetDatabaseResult2> getDatabase2(
  GetDatabaseArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getDatabase:getDatabase',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult2.fromMap(result);
}
