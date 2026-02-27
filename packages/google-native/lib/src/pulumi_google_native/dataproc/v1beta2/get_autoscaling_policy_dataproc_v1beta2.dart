import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autoscaling_policy_dataproc_v1beta2_args.dart';
import 'get_autoscaling_policy_dataproc_v1beta2_result.dart';

/// Retrieves autoscaling policy.
Future<GetAutoscalingPolicyDataprocV1beta2Result>
    getAutoscalingPolicyDataprocV1beta2(
  GetAutoscalingPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getAutoscalingPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoscalingPolicyDataprocV1beta2Result.fromMap(result);
}
