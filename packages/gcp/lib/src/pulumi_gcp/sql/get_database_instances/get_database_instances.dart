import 'package:pulumi/pulumi.dart';
import 'get_database_instances_args.dart';
import 'get_database_instances_result.dart';

/// Use this data source to get information about a list of Cloud SQL instances in a project. You can also apply some filters over this list to get a more filtered list of Cloud SQL instances.
Future<GetDatabaseInstancesResult> getDatabaseInstances(
  GetDatabaseInstancesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getDatabaseInstances:getDatabaseInstances',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatabaseInstancesResult.fromMap(result);
}
