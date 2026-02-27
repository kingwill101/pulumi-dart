import 'package:pulumi/pulumi.dart' hide Config;
import 'get_notification_channel_args.dart';
import 'get_notification_channel_result.dart';

/// Gets a single notification channel. The channel includes the relevant configuration details with which the channel was created. However, the response may truncate or omit passwords, API keys, or other private key matter and thus the response may not be 100% identical to the information that was supplied in the call to the create method.
Future<GetNotificationChannelResult> getNotificationChannel(
  GetNotificationChannelArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v3:getNotificationChannel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNotificationChannelResult.fromMap(result);
}
