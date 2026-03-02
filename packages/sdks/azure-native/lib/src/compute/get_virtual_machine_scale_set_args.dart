// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_virtual_machine_scale_set_args_doc}
/// Arguments for getVirtualMachineScaleSet.
/// {@endtemplate}
/// {@macro pulumi_compute_get_virtual_machine_scale_set_args_doc}
class GetVirtualMachineScaleSetArgs {
  /// The expand expression to apply on the operation. 'UserData' retrieves the UserData property of the VM scale set that was provided by the user during the VM scale set Create/Update operation
  final pulumi.Input<String>? expand;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VM scale set.
  final pulumi.Input<String> vmScaleSetName;

  /// Creates a new [GetVirtualMachineScaleSetArgs].
  /// [expand] The expand expression to apply on the operation. 'UserData' retrieves the UserData property of the VM scale set that was provided by the user during the VM scale set Create/Update operation
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vmScaleSetName] The name of the VM scale set.
  GetVirtualMachineScaleSetArgs({
    this.expand,
    required this.resourceGroupName,
    required this.vmScaleSetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
      'vmScaleSetName': vmScaleSetName,
    };
  }

  factory GetVirtualMachineScaleSetArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineScaleSetArgs(
      expand: map['expand'] == null ? null : (map['expand'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      vmScaleSetName: (map['vmScaleSetName'] as String).input(),
    );
  }
}

