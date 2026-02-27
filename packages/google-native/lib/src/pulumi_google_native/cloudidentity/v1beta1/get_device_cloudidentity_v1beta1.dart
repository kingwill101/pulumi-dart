import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_device_cloudidentity_v1beta1_args.dart';
import 'get_device_cloudidentity_v1beta1_result.dart';

/// Retrieves the specified device.
Future<GetDeviceCloudidentityV1beta1Result> getDeviceCloudidentityV1beta1(
  GetDeviceCloudidentityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1beta1:getDevice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeviceCloudidentityV1beta1Result.fromMap(result);
}
