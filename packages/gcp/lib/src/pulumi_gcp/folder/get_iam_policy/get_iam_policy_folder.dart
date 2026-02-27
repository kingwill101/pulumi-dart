import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_iam_policy_folder_args.dart';
import 'get_iam_policy_folder_result.dart';

/// Retrieves the current IAM policy data for a folder.
///
/// ## example
Future<GetIamPolicyFolderResult> getIamPolicyFolder(
  GetIamPolicyFolderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:folder/getIamPolicy:getIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamPolicyFolderResult.fromMap(result);
}
