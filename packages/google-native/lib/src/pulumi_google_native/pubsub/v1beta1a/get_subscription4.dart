import 'package:pulumi/pulumi.dart';
import 'get_subscription_args4.dart';
import 'get_subscription_result4.dart';

/// Gets the configuration details of a subscription.
Future<GetSubscriptionResult4> getSubscription4(
  GetSubscriptionArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1beta1a:getSubscription',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionResult4.fromMap(result);
}
