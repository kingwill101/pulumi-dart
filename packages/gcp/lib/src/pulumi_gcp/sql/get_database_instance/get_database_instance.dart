import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_instance_args.dart';
import 'get_database_instance_result.dart';

/// Use this data source to get information about a Cloud SQL instance.
Future<GetDatabaseInstanceResult> getDatabaseInstance(
  GetDatabaseInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getDatabaseInstance:getDatabaseInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseInstanceResult.fromMap(result);
}
