import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autoscaling_policy_iam_policy_dataproc_v1beta2_args.dart';
import 'get_autoscaling_policy_iam_policy_dataproc_v1beta2_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetAutoscalingPolicyIamPolicyDataprocV1beta2Result>
    getAutoscalingPolicyIamPolicyDataprocV1beta2(
  GetAutoscalingPolicyIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getAutoscalingPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoscalingPolicyIamPolicyDataprocV1beta2Result.fromMap(result);
}
