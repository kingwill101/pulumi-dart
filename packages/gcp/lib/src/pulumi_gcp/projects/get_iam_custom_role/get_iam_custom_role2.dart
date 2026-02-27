import 'package:pulumi/pulumi.dart';
import 'get_iam_custom_role_args2.dart';
import 'get_iam_custom_role_result2.dart';

/// Get information about a Google Cloud Project IAM Custom Role. Note that you must have the `roles/iam.roleViewer` role (or equivalent permissions) at the project level to use this datasource.
Future<GetIamCustomRoleResult2> getIamCustomRole2(
  GetIamCustomRoleArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getIamCustomRole:getIamCustomRole',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIamCustomRoleResult2.fromMap(result);
}
