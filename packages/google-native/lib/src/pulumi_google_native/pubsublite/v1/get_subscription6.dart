import 'package:pulumi/pulumi.dart';
import 'get_subscription_args6.dart';
import 'get_subscription_result6.dart';

/// Returns the subscription configuration.
Future<GetSubscriptionResult6> getSubscription6(
  GetSubscriptionArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsublite/v1:getSubscription',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionResult6.fromMap(result);
}
