// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_guestconfiguration_get_guest_configuration_connected_vmwarev_sphere_assignment_args_doc}
/// Arguments for getGuestConfigurationConnectedVMwarevSphereAssignment.
/// {@endtemplate}
/// {@macro pulumi_guestconfiguration_get_guest_configuration_connected_vmwarev_sphere_assignment_args_doc}
class GetGuestConfigurationConnectedVMwarevSphereAssignmentArgs {
  /// The guest configuration assignment name.
  final pulumi.Input<String> guestConfigurationAssignmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual machine.
  final pulumi.Input<String> vmName;

  /// Creates a new [GetGuestConfigurationConnectedVMwarevSphereAssignmentArgs].
  /// [guestConfigurationAssignmentName] The guest configuration assignment name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vmName] The name of the virtual machine.
  const GetGuestConfigurationConnectedVMwarevSphereAssignmentArgs({
    required this.guestConfigurationAssignmentName,
    required this.resourceGroupName,
    required this.vmName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestConfigurationAssignmentName': guestConfigurationAssignmentName,
      'resourceGroupName': resourceGroupName,
      'vmName': vmName,
    };
  }

  factory GetGuestConfigurationConnectedVMwarevSphereAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetGuestConfigurationConnectedVMwarevSphereAssignmentArgs(
      guestConfigurationAssignmentName: pulumi.Input.fromValue(map['guestConfigurationAssignmentName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      vmName: pulumi.Input.fromValue(map['vmName'] as String),
    );
  }
}

