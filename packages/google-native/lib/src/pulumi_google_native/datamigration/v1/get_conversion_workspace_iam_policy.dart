import 'package:pulumi/pulumi.dart';
import 'get_conversion_workspace_iam_policy_args.dart';
import 'get_conversion_workspace_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetConversionWorkspaceIamPolicyResult> getConversionWorkspaceIamPolicy(
  GetConversionWorkspaceIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getConversionWorkspaceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConversionWorkspaceIamPolicyResult.fromMap(result);
}
