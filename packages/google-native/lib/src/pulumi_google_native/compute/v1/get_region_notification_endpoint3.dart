import 'package:pulumi/pulumi.dart';
import 'get_region_notification_endpoint_args3.dart';
import 'get_region_notification_endpoint_result3.dart';

/// Returns the specified NotificationEndpoint resource in the given region.
Future<GetRegionNotificationEndpointResult3> getRegionNotificationEndpoint3(
  GetRegionNotificationEndpointArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionNotificationEndpoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionNotificationEndpointResult3.fromMap(result);
}
