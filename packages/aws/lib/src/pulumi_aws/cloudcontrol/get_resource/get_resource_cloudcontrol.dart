import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_cloudcontrol_args.dart';
import 'get_resource_cloudcontrol_result.dart';

/// Provides details for a Cloud Control API Resource. The reading of these resources is proxied through Cloud Control API handlers to the backend service.
Future<GetResourceCloudcontrolResult> getResourceCloudcontrol(
  GetResourceCloudcontrolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudcontrol/getResource:getResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceCloudcontrolResult.fromMap(result);
}
