import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_sqladmin_v1_args.dart';
import 'get_database_sqladmin_v1_result.dart';

/// Retrieves a resource containing information about a database inside a Cloud SQL instance.
Future<GetDatabaseSqladminV1Result> getDatabaseSqladminV1(
  GetDatabaseSqladminV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1:getDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseSqladminV1Result.fromMap(result);
}
