import 'package:pulumi/pulumi.dart';
import 'get_windows_file_system_args.dart';
import 'get_windows_file_system_result.dart';

/// Retrieve information on FSx Windows File System.
///
/// ## Example Usage
///
/// ### Root volume Example
Future<GetWindowsFileSystemResult> getWindowsFileSystem(
  GetWindowsFileSystemArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:fsx/getWindowsFileSystem:getWindowsFileSystem',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWindowsFileSystemResult.fromMap(result);
}
