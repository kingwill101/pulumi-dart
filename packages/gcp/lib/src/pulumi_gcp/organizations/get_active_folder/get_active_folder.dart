import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_active_folder_args.dart';
import 'get_active_folder_result.dart';

/// Get an active folder within GCP by `display_name` and `parent`.
Future<GetActiveFolderResult> getActiveFolder(
  GetActiveFolderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getActiveFolder:getActiveFolder',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetActiveFolderResult.fromMap(result);
}
