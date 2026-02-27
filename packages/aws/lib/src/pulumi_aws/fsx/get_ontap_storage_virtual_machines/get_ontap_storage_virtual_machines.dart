import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ontap_storage_virtual_machines_args.dart';
import 'get_ontap_storage_virtual_machines_result.dart';

/// This resource can be useful for getting back a set of FSx ONTAP Storage Virtual Machine (SVM) IDs.
///
/// ## Example Usage
///
/// The following shows outputting all SVM IDs for a given FSx ONTAP File System.
Future<GetOntapStorageVirtualMachinesResult> getOntapStorageVirtualMachines(
  GetOntapStorageVirtualMachinesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:fsx/getOntapStorageVirtualMachines:getOntapStorageVirtualMachines',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOntapStorageVirtualMachinesResult.fromMap(result);
}
