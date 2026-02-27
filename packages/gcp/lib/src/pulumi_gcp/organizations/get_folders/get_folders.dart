import 'package:pulumi/pulumi.dart' as pulumi;
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
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getFolders:getFolders',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFoldersResult.fromMap(result);
}
