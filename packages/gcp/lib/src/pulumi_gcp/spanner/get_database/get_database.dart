import 'package:pulumi/pulumi.dart';
import 'get_database_args.dart';
import 'get_database_result.dart';

/// Get a spanner database from Google Cloud by its name and instance name.
Future<GetDatabaseResult> getDatabase(
  GetDatabaseArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:spanner/getDatabase:getDatabase',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult.fromMap(result);
}
