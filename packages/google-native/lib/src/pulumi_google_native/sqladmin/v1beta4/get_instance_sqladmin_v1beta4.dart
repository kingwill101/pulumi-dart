import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_sqladmin_v1beta4_args.dart';
import 'get_instance_sqladmin_v1beta4_result.dart';

/// Retrieves a resource containing information about a Cloud SQL instance.
Future<GetInstanceSqladminV1beta4Result> getInstanceSqladminV1beta4(
  GetInstanceSqladminV1beta4Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1beta4:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceSqladminV1beta4Result.fromMap(result);
}
