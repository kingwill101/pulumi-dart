import 'package:pulumi/pulumi.dart';
import 'get_ontap_storage_virtual_machine_args.dart';
import 'get_ontap_storage_virtual_machine_result.dart';

/// Retrieve information on FSx ONTAP Storage Virtual Machine (SVM).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Filter Example
Future<GetOntapStorageVirtualMachineResult> getOntapStorageVirtualMachine(
  GetOntapStorageVirtualMachineArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:fsx/getOntapStorageVirtualMachine:getOntapStorageVirtualMachine',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOntapStorageVirtualMachineResult.fromMap(result);
}
