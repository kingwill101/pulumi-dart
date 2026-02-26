import 'package:pulumi/pulumi.dart';
import 'get_folder_iam_policy_args2.dart';
import 'get_folder_iam_policy_result2.dart';

/// Gets the access control policy for a Folder. The returned policy may be empty if no such policy or resource exists. The `resource` field should be the Folder's resource name, e.g. "folders/1234". The caller must have `resourcemanager.folders.getIamPolicy` permission on the identified folder.
Future<GetFolderIamPolicyResult2> getFolderIamPolicy2(
  GetFolderIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v2beta1:getFolderIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderIamPolicyResult2.fromMap(result);
}
