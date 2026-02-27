import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_cloudresourcemanager_v2beta1_args.dart';
import 'get_folder_cloudresourcemanager_v2beta1_result.dart';

/// Retrieves a Folder identified by the supplied resource name. Valid Folder resource names have the format `folders/{folder_id}` (for example, `folders/1234`). The caller must have `resourcemanager.folders.get` permission on the identified folder.
Future<GetFolderCloudresourcemanagerV2beta1Result>
    getFolderCloudresourcemanagerV2beta1(
  GetFolderCloudresourcemanagerV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v2beta1:getFolder',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderCloudresourcemanagerV2beta1Result.fromMap(result);
}
