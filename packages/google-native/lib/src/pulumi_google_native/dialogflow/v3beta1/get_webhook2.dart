import 'package:pulumi/pulumi.dart';
import 'get_webhook_args2.dart';
import 'get_webhook_result2.dart';

/// Retrieves the specified webhook.
Future<GetWebhookResult2> getWebhook2(
  GetWebhookArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getWebhook',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWebhookResult2.fromMap(result);
}
