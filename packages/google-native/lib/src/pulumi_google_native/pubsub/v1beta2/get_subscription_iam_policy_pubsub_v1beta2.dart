import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subscription_iam_policy_pubsub_v1beta2_args.dart';
import 'get_subscription_iam_policy_pubsub_v1beta2_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetSubscriptionIamPolicyPubsubV1beta2Result>
    getSubscriptionIamPolicyPubsubV1beta2(
  GetSubscriptionIamPolicyPubsubV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1beta2:getSubscriptionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionIamPolicyPubsubV1beta2Result.fromMap(result);
}
