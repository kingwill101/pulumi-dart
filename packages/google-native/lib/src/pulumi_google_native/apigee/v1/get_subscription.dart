import 'package:pulumi/pulumi.dart';
import 'get_subscription_args.dart';
import 'get_subscription_result.dart';

/// Gets details for an API product subscription.
Future<GetSubscriptionResult> getSubscription(
  GetSubscriptionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getSubscription',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionResult.fromMap(result);
}
