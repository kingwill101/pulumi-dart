import 'package:pulumi/pulumi.dart';
import 'get_private_cloud_args.dart';
import 'get_private_cloud_result.dart';

/// Retrieves a `PrivateCloud` resource by its resource name.
Future<GetPrivateCloudResult> getPrivateCloud(
  GetPrivateCloudArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getPrivateCloud',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPrivateCloudResult.fromMap(result);
}
