import 'package:pulumi/pulumi.dart';
import 'get_subscription_args2.dart';
import 'get_subscription_result2.dart';

/// Gets details of a single Subscription.
Future<GetSubscriptionResult2> getSubscription2(
  GetSubscriptionArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getSubscription',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionResult2.fromMap(result);
}
