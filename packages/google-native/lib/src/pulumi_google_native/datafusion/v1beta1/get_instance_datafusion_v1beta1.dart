import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_datafusion_v1beta1_args.dart';
import 'get_instance_datafusion_v1beta1_result.dart';

/// Gets details of a single Data Fusion instance.
Future<GetInstanceDatafusionV1beta1Result> getInstanceDatafusionV1beta1(
  GetInstanceDatafusionV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datafusion/v1beta1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceDatafusionV1beta1Result.fromMap(result);
}
