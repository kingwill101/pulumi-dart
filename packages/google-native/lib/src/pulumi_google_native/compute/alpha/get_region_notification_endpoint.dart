import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_notification_endpoint_args.dart';
import 'get_region_notification_endpoint_result.dart';

/// Returns the specified NotificationEndpoint resource in the given region.
Future<GetRegionNotificationEndpointResult> getRegionNotificationEndpoint(
  GetRegionNotificationEndpointArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionNotificationEndpoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionNotificationEndpointResult.fromMap(result);
}
