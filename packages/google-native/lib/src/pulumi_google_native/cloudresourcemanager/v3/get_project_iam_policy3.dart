import 'package:pulumi/pulumi.dart';
import 'get_project_iam_policy_args3.dart';
import 'get_project_iam_policy_result3.dart';

/// Returns the IAM access control policy for the specified project, in the format `projects/{ProjectIdOrNumber}` e.g. projects/123. Permission is denied if the policy or the resource do not exist.
Future<GetProjectIamPolicyResult3> getProjectIamPolicy3(
  GetProjectIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getProjectIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProjectIamPolicyResult3.fromMap(result);
}
