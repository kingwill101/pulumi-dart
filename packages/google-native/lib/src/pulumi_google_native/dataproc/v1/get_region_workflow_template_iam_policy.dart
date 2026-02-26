import 'package:pulumi/pulumi.dart';
import 'get_region_workflow_template_iam_policy_args.dart';
import 'get_region_workflow_template_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetRegionWorkflowTemplateIamPolicyResult>
    getRegionWorkflowTemplateIamPolicy(
  GetRegionWorkflowTemplateIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getRegionWorkflowTemplateIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionWorkflowTemplateIamPolicyResult.fromMap(result);
}
