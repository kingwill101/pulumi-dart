import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_sqladmin_v1_args.dart';
import 'get_instance_sqladmin_v1_result.dart';

/// Retrieves a resource containing information about a Cloud SQL instance.
Future<GetInstanceSqladminV1Result> getInstanceSqladminV1(
  GetInstanceSqladminV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceSqladminV1Result.fromMap(result);
}
