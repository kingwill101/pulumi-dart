// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_configuration_assignment_properties.dart';

/// {@template pulumi_guestconfiguration_guest_configuration_assignment_args_doc}
/// The set of arguments for GuestConfigurationAssignment.
/// {@endtemplate}
/// {@macro pulumi_guestconfiguration_guest_configuration_assignment_args_doc}
class GuestConfigurationAssignmentArgs {
  /// The guest configuration assignment name.
  final pulumi.Input<String>? guestConfigurationAssignmentName;
  /// Region where the VM is located.
  final pulumi.Input<String>? location;
  /// The guest configuration assignment name.
  final pulumi.Input<String> name;
  /// Properties of the Guest configuration assignment.
  final pulumi.Input<GuestConfigurationAssignmentProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual machine.
  final pulumi.Input<String> vmName;

  /// Creates a new [GuestConfigurationAssignmentArgs].
  /// [guestConfigurationAssignmentName] The guest configuration assignment name.
  /// [location] Region where the VM is located.
  /// [name] The guest configuration assignment name.
  /// [properties] Properties of the Guest configuration assignment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vmName] The name of the virtual machine.
  GuestConfigurationAssignmentArgs({
    this.guestConfigurationAssignmentName,
    this.location,
    required this.name,
    this.properties,
    required this.resourceGroupName,
    required this.vmName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestConfigurationAssignmentName': ?guestConfigurationAssignmentName,
      'location': ?location,
      'name': name,
      'properties': ?pulumi.Input.mapOptionalInputValue<GuestConfigurationAssignmentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'vmName': vmName,
    };
  }

  factory GuestConfigurationAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GuestConfigurationAssignmentArgs(
      guestConfigurationAssignmentName: map['guestConfigurationAssignmentName'] == null ? null : (map['guestConfigurationAssignmentName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: (map['name'] as String).input(),
      properties: map['properties'] == null ? null : (GuestConfigurationAssignmentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      vmName: (map['vmName'] as String).input(),
    );
  }
}

