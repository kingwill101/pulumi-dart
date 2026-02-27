import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_databases_args.dart';
import 'get_databases_result.dart';

/// Use this data source to get information about a list of databases in a Cloud SQL instance.
Future<GetDatabasesResult> getDatabases(
  GetDatabasesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getDatabases:getDatabases',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabasesResult.fromMap(result);
}
