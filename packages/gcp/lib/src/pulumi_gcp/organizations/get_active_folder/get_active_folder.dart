import 'package:pulumi/pulumi.dart';
import 'get_active_folder_args.dart';
import 'get_active_folder_result.dart';

/// Get an active folder within GCP by `display_name` and `parent`.
Future<GetActiveFolderResult> getActiveFolder(
  GetActiveFolderArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getActiveFolder:getActiveFolder',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetActiveFolderResult.fromMap(result);
}
