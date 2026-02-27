import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_folder_args.dart';
import 'get_managed_folder_result.dart';

/// Returns metadata of the specified managed folder.
Future<GetManagedFolderResult> getManagedFolder(
  GetManagedFolderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getManagedFolder',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedFolderResult.fromMap(result);
}
