// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_configuration_assignment_properties.dart';

/// {@template pulumi_guestconfiguration_guest_configuration_hcrpassignment_args_doc}
/// The set of arguments for GuestConfigurationHCRPAssignment.
/// {@endtemplate}
/// {@macro pulumi_guestconfiguration_guest_configuration_hcrpassignment_args_doc}
class GuestConfigurationHCRPAssignmentArgs {
  /// The guest configuration assignment name.
  final pulumi.Input<String>? guestConfigurationAssignmentName;
  /// Region where the VM is located.
  final pulumi.Input<String>? location;
  /// The name of the ARC machine.
  final pulumi.Input<String> machineName;
  /// The guest configuration assignment name.
  final pulumi.Input<String> name;
  /// Properties of the Guest configuration assignment.
  final pulumi.Input<GuestConfigurationAssignmentProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GuestConfigurationHCRPAssignmentArgs].
  /// [guestConfigurationAssignmentName] The guest configuration assignment name.
  /// [location] Region where the VM is located.
  /// [machineName] The name of the ARC machine.
  /// [name] The guest configuration assignment name.
  /// [properties] Properties of the Guest configuration assignment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GuestConfigurationHCRPAssignmentArgs({
    this.guestConfigurationAssignmentName,
    this.location,
    required this.machineName,
    required this.name,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestConfigurationAssignmentName': ?guestConfigurationAssignmentName,
      'location': ?location,
      'machineName': machineName,
      'name': name,
      'properties': ?pulumi.Input.mapOptionalInputValue<GuestConfigurationAssignmentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GuestConfigurationHCRPAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GuestConfigurationHCRPAssignmentArgs(
      guestConfigurationAssignmentName: (() { final guardedValue = map['guestConfigurationAssignmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineName: pulumi.Input.fromValue(map['machineName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestConfigurationAssignmentProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

