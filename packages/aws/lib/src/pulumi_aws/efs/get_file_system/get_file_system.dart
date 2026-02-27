import 'package:pulumi/pulumi.dart';
import 'get_file_system_args.dart';
import 'get_file_system_result.dart';

/// Provides information about an Elastic File System (EFS) File System.
Future<GetFileSystemResult> getFileSystem(
  GetFileSystemArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:efs/getFileSystem:getFileSystem',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFileSystemResult.fromMap(result);
}
