import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workflow_template_iam_policy_dataproc_v1beta2_args.dart';
import 'get_workflow_template_iam_policy_dataproc_v1beta2_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetWorkflowTemplateIamPolicyDataprocV1beta2Result>
    getWorkflowTemplateIamPolicyDataprocV1beta2(
  GetWorkflowTemplateIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getWorkflowTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkflowTemplateIamPolicyDataprocV1beta2Result.fromMap(result);
}
