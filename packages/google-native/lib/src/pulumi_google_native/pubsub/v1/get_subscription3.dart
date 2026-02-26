import 'package:pulumi/pulumi.dart';
import 'get_subscription_args3.dart';
import 'get_subscription_result3.dart';

/// Gets the configuration details of a subscription.
Future<GetSubscriptionResult3> getSubscription3(
  GetSubscriptionArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1:getSubscription',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionResult3.fromMap(result);
}
