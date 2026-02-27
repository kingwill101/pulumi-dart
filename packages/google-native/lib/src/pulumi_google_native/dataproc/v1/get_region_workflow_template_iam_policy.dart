import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_workflow_template_iam_policy_args.dart';
import 'get_region_workflow_template_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetRegionWorkflowTemplateIamPolicyResult>
    getRegionWorkflowTemplateIamPolicy(
  GetRegionWorkflowTemplateIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getRegionWorkflowTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionWorkflowTemplateIamPolicyResult.fromMap(result);
}
