import 'package:pulumi/pulumi.dart';
import 'get_subscription_args5.dart';
import 'get_subscription_result5.dart';

/// Gets the configuration details of a subscription.
Future<GetSubscriptionResult5> getSubscription5(
  GetSubscriptionArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1beta2:getSubscription',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionResult5.fromMap(result);
}
