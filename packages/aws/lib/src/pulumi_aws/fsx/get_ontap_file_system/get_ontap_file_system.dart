import 'package:pulumi/pulumi.dart';
import 'get_ontap_file_system_args.dart';
import 'get_ontap_file_system_result.dart';

/// Retrieve information on FSx ONTAP File System.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetOntapFileSystemResult> getOntapFileSystem(
  GetOntapFileSystemArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:fsx/getOntapFileSystem:getOntapFileSystem',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOntapFileSystemResult.fromMap(result);
}
