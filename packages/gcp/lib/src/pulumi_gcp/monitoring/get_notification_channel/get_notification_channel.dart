import 'package:pulumi/pulumi.dart';
import 'get_notification_channel_args.dart';
import 'get_notification_channel_result.dart';

/// A NotificationChannel is a medium through which an alert is delivered
/// when a policy violation is detected. Examples of channels include email, SMS,
/// and third-party messaging applications. Fields containing sensitive information
/// like authentication tokens or contact info are only partially populated on retrieval.
///
///
/// To get more information about NotificationChannel, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannels)
/// * How-to Guides
/// * [Notification Options](https://cloud.google.com/monitoring/support/notification-options)
/// * [Monitoring API Documentation](https://cloud.google.com/monitoring/api/v3/)
///
///
/// ## Example Usage
///
/// ### Notification Channel Basic
Future<GetNotificationChannelResult> getNotificationChannel(
  GetNotificationChannelArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:monitoring/getNotificationChannel:getNotificationChannel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNotificationChannelResult.fromMap(result);
}
