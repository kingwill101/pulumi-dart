import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_notification_endpoint_compute_v1_args.dart';
import 'get_region_notification_endpoint_compute_v1_result.dart';

/// Returns the specified NotificationEndpoint resource in the given region.
Future<GetRegionNotificationEndpointComputeV1Result>
    getRegionNotificationEndpointComputeV1(
  GetRegionNotificationEndpointComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionNotificationEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNotificationEndpointComputeV1Result.fromMap(result);
}
