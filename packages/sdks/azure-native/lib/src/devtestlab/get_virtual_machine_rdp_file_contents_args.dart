// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_get_virtual_machine_rdp_file_contents_args_doc}
/// Arguments for getVirtualMachineRdpFileContents.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_get_virtual_machine_rdp_file_contents_args_doc}
class GetVirtualMachineRdpFileContentsArgs {
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The name of the LabVirtualMachine
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetVirtualMachineRdpFileContentsArgs].
  /// [labName] The name of the lab.
  /// [name] The name of the LabVirtualMachine
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetVirtualMachineRdpFileContentsArgs({
    required this.labName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labName': labName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetVirtualMachineRdpFileContentsArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineRdpFileContentsArgs(
      labName: (map['labName'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

