import 'package:pulumi/pulumi.dart';
import 'get_notification_args.dart';
import 'get_notification_result.dart';

/// View a notification configuration.
Future<GetNotificationResult> getNotification(
  GetNotificationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getNotification',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNotificationResult.fromMap(result);
}
