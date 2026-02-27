import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_datafusion_v1_args.dart';
import 'get_instance_datafusion_v1_result.dart';

/// Gets details of a single Data Fusion instance.
Future<GetInstanceDatafusionV1Result> getInstanceDatafusionV1(
  GetInstanceDatafusionV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datafusion/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceDatafusionV1Result.fromMap(result);
}
