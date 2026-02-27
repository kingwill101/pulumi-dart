import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subscription_beyondcorp_v1alpha_args.dart';
import 'get_subscription_beyondcorp_v1alpha_result.dart';

/// Gets details of a single Subscription.
Future<GetSubscriptionBeyondcorpV1alphaResult> getSubscriptionBeyondcorpV1alpha(
  GetSubscriptionBeyondcorpV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionBeyondcorpV1alphaResult.fromMap(result);
}
