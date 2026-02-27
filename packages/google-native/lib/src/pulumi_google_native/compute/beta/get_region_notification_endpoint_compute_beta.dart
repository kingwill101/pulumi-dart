import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_notification_endpoint_compute_beta_args.dart';
import 'get_region_notification_endpoint_compute_beta_result.dart';

/// Returns the specified NotificationEndpoint resource in the given region.
Future<GetRegionNotificationEndpointComputeBetaResult>
    getRegionNotificationEndpointComputeBeta(
  GetRegionNotificationEndpointComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionNotificationEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNotificationEndpointComputeBetaResult.fromMap(result);
}
