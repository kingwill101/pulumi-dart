import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_args.dart';
import 'get_folder_result.dart';

/// Use this data source to get information about a Google Cloud Folder.
Future<GetFolderResult> getFolder(
  GetFolderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getFolder:getFolder',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderResult.fromMap(result);
}
