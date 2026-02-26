import 'package:pulumi/pulumi.dart';
import 'get_region_notification_endpoint_args2.dart';
import 'get_region_notification_endpoint_result2.dart';

/// Returns the specified NotificationEndpoint resource in the given region.
Future<GetRegionNotificationEndpointResult2> getRegionNotificationEndpoint2(
  GetRegionNotificationEndpointArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionNotificationEndpoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionNotificationEndpointResult2.fromMap(result);
}
