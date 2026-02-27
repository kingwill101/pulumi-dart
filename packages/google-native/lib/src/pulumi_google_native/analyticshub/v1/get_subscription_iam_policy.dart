import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subscription_iam_policy_args.dart';
import 'get_subscription_iam_policy_result.dart';

/// Gets the IAM policy.
Future<GetSubscriptionIamPolicyResult> getSubscriptionIamPolicy(
  GetSubscriptionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1:getSubscriptionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionIamPolicyResult.fromMap(result);
}
