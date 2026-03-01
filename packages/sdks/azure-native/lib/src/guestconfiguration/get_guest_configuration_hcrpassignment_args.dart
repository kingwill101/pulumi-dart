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
  GetGuestConfigurationHCRPAssignmentArgs({
    required pulumi.Output<String> guestConfigurationAssignmentName,
    required pulumi.Output<String> machineName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      guestConfigurationAssignmentName = pulumi.Input.asInput<String>(guestConfigurationAssignmentName),
      machineName = pulumi.Input.asInput<String>(machineName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestConfigurationAssignmentName': guestConfigurationAssignmentName,
      'machineName': machineName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGuestConfigurationHCRPAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetGuestConfigurationHCRPAssignmentArgs(
      guestConfigurationAssignmentName: pulumi.Output.create<String>(map['guestConfigurationAssignmentName'] as String),
      machineName: pulumi.Output.create<String>(map['machineName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

