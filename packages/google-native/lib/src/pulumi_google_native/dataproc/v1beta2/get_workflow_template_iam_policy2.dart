import 'package:pulumi/pulumi.dart' hide Config;
import 'get_workflow_template_iam_policy_args2.dart';
import 'get_workflow_template_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetWorkflowTemplateIamPolicyResult2> getWorkflowTemplateIamPolicy2(
  GetWorkflowTemplateIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getWorkflowTemplateIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkflowTemplateIamPolicyResult2.fromMap(result);
}
