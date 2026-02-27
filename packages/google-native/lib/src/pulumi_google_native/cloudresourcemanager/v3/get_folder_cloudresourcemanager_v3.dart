import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_cloudresourcemanager_v3_args.dart';
import 'get_folder_cloudresourcemanager_v3_result.dart';

/// Retrieves a folder identified by the supplied resource name. Valid folder resource names have the format `folders/{folder_id}` (for example, `folders/1234`). The caller must have `resourcemanager.folders.get` permission on the identified folder.
Future<GetFolderCloudresourcemanagerV3Result> getFolderCloudresourcemanagerV3(
  GetFolderCloudresourcemanagerV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getFolder',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderCloudresourcemanagerV3Result.fromMap(result);
}
