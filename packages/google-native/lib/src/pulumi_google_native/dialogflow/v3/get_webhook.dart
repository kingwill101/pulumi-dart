import 'package:pulumi/pulumi.dart' hide Config;
import 'get_webhook_args.dart';
import 'get_webhook_result.dart';

/// Retrieves the specified webhook.
Future<GetWebhookResult> getWebhook(
  GetWebhookArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getWebhook',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWebhookResult.fromMap(result);
}
