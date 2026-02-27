import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_sqladmin_v1beta4_args.dart';
import 'get_database_sqladmin_v1beta4_result.dart';

/// Retrieves a resource containing information about a database inside a Cloud SQL instance.
Future<GetDatabaseSqladminV1beta4Result> getDatabaseSqladminV1beta4(
  GetDatabaseSqladminV1beta4Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1beta4:getDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseSqladminV1beta4Result.fromMap(result);
}
