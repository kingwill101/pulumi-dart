import 'package:pulumi/pulumi.dart';
import 'get_databases_args.dart';
import 'get_databases_result.dart';

/// Use this data source to get information about a list of databases in a Cloud SQL instance.
Future<GetDatabasesResult> getDatabases(
  GetDatabasesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getDatabases:getDatabases',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatabasesResult.fromMap(result);
}
