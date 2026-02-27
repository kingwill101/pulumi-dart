import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_iam_policy_args.dart';
import 'get_folder_iam_policy_result.dart';

/// Gets the access control policy for a Folder. The returned policy may be empty if no such policy or resource exists. The `resource` field should be the Folder's resource name, e.g. "folders/1234". The caller must have `resourcemanager.folders.getIamPolicy` permission on the identified folder.
Future<GetFolderIamPolicyResult> getFolderIamPolicy(
  GetFolderIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v2:getFolderIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderIamPolicyResult.fromMap(result);
}
