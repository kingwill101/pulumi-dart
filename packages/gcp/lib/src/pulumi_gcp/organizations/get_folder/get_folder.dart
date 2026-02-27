import 'package:pulumi/pulumi.dart';
import 'get_folder_args.dart';
import 'get_folder_result.dart';

/// Use this data source to get information about a Google Cloud Folder.
Future<GetFolderResult> getFolder(
  GetFolderArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getFolder:getFolder',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderResult.fromMap(result);
}
