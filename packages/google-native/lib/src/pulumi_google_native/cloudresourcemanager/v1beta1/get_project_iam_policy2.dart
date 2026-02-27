import 'package:pulumi/pulumi.dart' hide Config;
import 'get_project_iam_policy_args2.dart';
import 'get_project_iam_policy_result2.dart';

/// Returns the IAM access control policy for the specified Project. Permission is denied if the policy or the resource does not exist. For additional information about resource structure and identification, see [Resource Names](/apis/design/resource_names).
Future<GetProjectIamPolicyResult2> getProjectIamPolicy2(
  GetProjectIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v1beta1:getProjectIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProjectIamPolicyResult2.fromMap(result);
}
