import 'package:pulumi/pulumi.dart';
import 'get_notification_channel_args.dart';
import 'get_notification_channel_result.dart';

/// Data source for managing an AWS DevOps Guru Notification Channel.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetNotificationChannelResult> getNotificationChannel(
  GetNotificationChannelArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:devopsguru/getNotificationChannel:getNotificationChannel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNotificationChannelResult.fromMap(result);
}
