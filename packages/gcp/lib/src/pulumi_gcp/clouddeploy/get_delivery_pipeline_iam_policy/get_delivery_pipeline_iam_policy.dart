import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_delivery_pipeline_iam_policy_args.dart';
import 'get_delivery_pipeline_iam_policy_result.dart';

/// Retrieves the current IAM policy data for deliverypipeline
Future<GetDeliveryPipelineIamPolicyResult> getDeliveryPipelineIamPolicy(
  GetDeliveryPipelineIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:clouddeploy/getDeliveryPipelineIamPolicy:getDeliveryPipelineIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeliveryPipelineIamPolicyResult.fromMap(result);
}
