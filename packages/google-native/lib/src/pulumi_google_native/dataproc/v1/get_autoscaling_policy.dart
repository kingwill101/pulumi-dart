import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autoscaling_policy_args.dart';
import 'get_autoscaling_policy_result.dart';

/// Retrieves autoscaling policy.
Future<GetAutoscalingPolicyResult> getAutoscalingPolicy(
  GetAutoscalingPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getAutoscalingPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoscalingPolicyResult.fromMap(result);
}
