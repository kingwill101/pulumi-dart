import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_file_system_args.dart';
import 'get_file_system_result.dart';

/// Provides information about an Elastic File System (EFS) File System.
Future<GetFileSystemResult> getFileSystem(
  GetFileSystemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:efs/getFileSystem:getFileSystem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFileSystemResult.fromMap(result);
}
