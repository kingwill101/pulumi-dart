// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_virtual_hard_disk_args_doc}
/// Arguments for getVirtualHardDisk.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_virtual_hard_disk_args_doc}
class GetVirtualHardDiskArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the virtual hard disk
  final pulumi.Input<String> virtualHardDiskName;

  /// Creates a new [GetVirtualHardDiskArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [virtualHardDiskName] Name of the virtual hard disk
  GetVirtualHardDiskArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualHardDiskName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualHardDiskName = pulumi.Input.asInput<String>(virtualHardDiskName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualHardDiskName': virtualHardDiskName,
    };
  }

  factory GetVirtualHardDiskArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualHardDiskArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualHardDiskName: pulumi.Output.create<String>(map['virtualHardDiskName'] as String),
    );
  }
}

