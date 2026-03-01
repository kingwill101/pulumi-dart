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
    pulumi.Output<String>? guestConfigurationAssignmentName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> machineName,
    required pulumi.Output<String> name,
    pulumi.Output<GuestConfigurationAssignmentProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      guestConfigurationAssignmentName = pulumi.Input.asOptionalInput<String>(guestConfigurationAssignmentName),
      location = pulumi.Input.asOptionalInput<String>(location),
      machineName = pulumi.Input.asInput<String>(machineName),
      name = pulumi.Input.asInput<String>(name),
      properties = pulumi.Input.asOptionalInput<GuestConfigurationAssignmentProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      guestConfigurationAssignmentName: map['guestConfigurationAssignmentName'] == null ? null : pulumi.Output.create<String>(map['guestConfigurationAssignmentName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      machineName: pulumi.Output.create<String>(map['machineName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<GuestConfigurationAssignmentProperties>(GuestConfigurationAssignmentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

