// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_guestconfiguration_get_guest_configuration_assignments_vmssargs_doc}
/// Arguments for getGuestConfigurationAssignmentsVMSS.
/// {@endtemplate}
/// {@macro pulumi_guestconfiguration_get_guest_configuration_assignments_vmssargs_doc}
class GetGuestConfigurationAssignmentsVMSSArgs {
  /// The guest configuration assignment name.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual machine scale set.
  final pulumi.Input<String> vmssName;

  /// Creates a new [GetGuestConfigurationAssignmentsVMSSArgs].
  /// [name] The guest configuration assignment name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vmssName] The name of the virtual machine scale set.
  const GetGuestConfigurationAssignmentsVMSSArgs({
    required this.name,
    required this.resourceGroupName,
    required this.vmssName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'vmssName': vmssName,
    };
  }

  factory GetGuestConfigurationAssignmentsVMSSArgs.fromMap(Map<String, dynamic> map) {
    return GetGuestConfigurationAssignmentsVMSSArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      vmssName: pulumi.Input.fromValue(map['vmssName'] as String),
    );
  }
}

