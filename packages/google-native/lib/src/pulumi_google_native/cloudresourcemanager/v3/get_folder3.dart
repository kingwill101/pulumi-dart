import 'package:pulumi/pulumi.dart';
import 'get_folder_args3.dart';
import 'get_folder_result3.dart';

/// Retrieves a folder identified by the supplied resource name. Valid folder resource names have the format `folders/{folder_id}` (for example, `folders/1234`). The caller must have `resourcemanager.folders.get` permission on the identified folder.
Future<GetFolderResult3> getFolder3(
  GetFolderArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getFolder',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderResult3.fromMap(result);
}
