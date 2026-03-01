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
  GetGuestConfigurationConnectedVMwarevSphereAssignmentArgs({
    required String guestConfigurationAssignmentName,
    required String resourceGroupName,
    required String vmName,
  }) :
      guestConfigurationAssignmentName = pulumi.Input.asInput<String>(guestConfigurationAssignmentName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vmName = pulumi.Input.asInput<String>(vmName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestConfigurationAssignmentName': guestConfigurationAssignmentName,
      'resourceGroupName': resourceGroupName,
      'vmName': vmName,
    };
  }

  factory GetGuestConfigurationConnectedVMwarevSphereAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetGuestConfigurationConnectedVMwarevSphereAssignmentArgs(
      guestConfigurationAssignmentName: map['guestConfigurationAssignmentName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      vmName: map['vmName'] as String,
    );
  }
}

