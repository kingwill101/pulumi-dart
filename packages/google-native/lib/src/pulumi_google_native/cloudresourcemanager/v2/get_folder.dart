import 'package:pulumi/pulumi.dart';
import 'get_folder_args.dart';
import 'get_folder_result.dart';

/// Retrieves a Folder identified by the supplied resource name. Valid Folder resource names have the format `folders/{folder_id}` (for example, `folders/1234`). The caller must have `resourcemanager.folders.get` permission on the identified folder.
Future<GetFolderResult> getFolder(
  GetFolderArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v2:getFolder',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderResult.fromMap(result);
}
