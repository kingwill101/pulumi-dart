// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_guestconfiguration_get_guest_configuration_hcrpassignment_args_doc}
/// Arguments for getGuestConfigurationHCRPAssignment.
/// {@endtemplate}
/// {@macro pulumi_guestconfiguration_get_guest_configuration_hcrpassignment_args_doc}
class GetGuestConfigurationHCRPAssignmentArgs {
  /// The guest configuration assignment name.
  final pulumi.Input<String> guestConfigurationAssignmentName;
  /// The name of the ARC machine.
  final pulumi.Input<String> machineName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGuestConfigurationHCRPAssignmentArgs].
  /// [guestConfigurationAssignmentName] The guest configuration assignment name.
  /// [machineName] The name of the ARC machine.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetGuestConfigurationHCRPAssignmentArgs({
    required this.guestConfigurationAssignmentName,
    required this.machineName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestConfigurationAssignmentName': guestConfigurationAssignmentName,
      'machineName': machineName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGuestConfigurationHCRPAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetGuestConfigurationHCRPAssignmentArgs(
      guestConfigurationAssignmentName: pulumi.Input.fromValue(map['guestConfigurationAssignmentName'] as String),
      machineName: pulumi.Input.fromValue(map['machineName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

