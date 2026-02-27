import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autoscaling_policy_iam_policy_args.dart';
import 'get_autoscaling_policy_iam_policy_result.dart';

/// Retrieves the current IAM policy data for autoscalingpolicy
Future<GetAutoscalingPolicyIamPolicyResult> getAutoscalingPolicyIamPolicy(
  GetAutoscalingPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getAutoscalingPolicyIamPolicy:getAutoscalingPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoscalingPolicyIamPolicyResult.fromMap(result);
}
