import 'package:pulumi/pulumi.dart';
import 'get_folders_args.dart';
import 'get_folders_result.dart';

/// Retrieve information about a set of folders based on a parent ID. See the
/// [REST API](https://docs.cloud.google.com/resource-manager/reference/rest/v3/folders/list)
/// for more details.
///
/// ## Example Usage
///
/// ### Searching For Folders At The Root Of An Org
Future<GetFoldersResult> getFolders(
  GetFoldersArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getFolders:getFolders',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFoldersResult.fromMap(result);
}
