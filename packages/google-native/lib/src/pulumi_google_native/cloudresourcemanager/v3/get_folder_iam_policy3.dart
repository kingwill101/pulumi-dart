import 'package:pulumi/pulumi.dart';
import 'get_folder_iam_policy_args3.dart';
import 'get_folder_iam_policy_result3.dart';

/// Gets the access control policy for a folder. The returned policy may be empty if no such policy or resource exists. The `resource` field should be the folder's resource name, for example: "folders/1234". The caller must have `resourcemanager.folders.getIamPolicy` permission on the identified folder.
Future<GetFolderIamPolicyResult3> getFolderIamPolicy3(
  GetFolderIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getFolderIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderIamPolicyResult3.fromMap(result);
}
