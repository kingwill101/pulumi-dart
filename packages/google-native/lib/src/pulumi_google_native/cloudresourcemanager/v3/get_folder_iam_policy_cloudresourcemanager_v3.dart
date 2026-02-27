import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_iam_policy_cloudresourcemanager_v3_args.dart';
import 'get_folder_iam_policy_cloudresourcemanager_v3_result.dart';

/// Gets the access control policy for a folder. The returned policy may be empty if no such policy or resource exists. The `resource` field should be the folder's resource name, for example: "folders/1234". The caller must have `resourcemanager.folders.getIamPolicy` permission on the identified folder.
Future<GetFolderIamPolicyCloudresourcemanagerV3Result>
    getFolderIamPolicyCloudresourcemanagerV3(
  GetFolderIamPolicyCloudresourcemanagerV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getFolderIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderIamPolicyCloudresourcemanagerV3Result.fromMap(result);
}
