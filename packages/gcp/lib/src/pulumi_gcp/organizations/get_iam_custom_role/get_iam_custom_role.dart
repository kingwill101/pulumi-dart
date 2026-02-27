import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_iam_custom_role_args.dart';
import 'get_iam_custom_role_result.dart';

/// Get information about a Google Cloud Organization IAM Custom Role. Note that you must have the `roles/iam.organizationRoleViewer` role (or equivalent permissions) at the organization level to use this datasource.
Future<GetIamCustomRoleResult> getIamCustomRole(
  GetIamCustomRoleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getIamCustomRole:getIamCustomRole',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamCustomRoleResult.fromMap(result);
}
