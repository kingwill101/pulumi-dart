import 'package:pulumi/pulumi.dart' hide Config;
import 'get_folder_args2.dart';
import 'get_folder_result2.dart';

/// Retrieves a Folder identified by the supplied resource name. Valid Folder resource names have the format `folders/{folder_id}` (for example, `folders/1234`). The caller must have `resourcemanager.folders.get` permission on the identified folder.
Future<GetFolderResult2> getFolder2(
  GetFolderArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v2beta1:getFolder',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderResult2.fromMap(result);
}
