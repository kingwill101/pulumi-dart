// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_configuration_assignment_properties.dart';

/// {@template pulumi_guestconfiguration_guest_configuration_assignments_vmssargs_doc}
/// The set of arguments for GuestConfigurationAssignmentsVMSS.
/// {@endtemplate}
/// {@macro pulumi_guestconfiguration_guest_configuration_assignments_vmssargs_doc}
class GuestConfigurationAssignmentsVMSSArgs {
  /// Region where the VM is located.
  final pulumi.Input<String>? location;
  /// The guest configuration assignment name.
  final pulumi.Input<String>? name;
  /// Properties of the Guest configuration assignment.
  final pulumi.Input<GuestConfigurationAssignmentProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual machine scale set.
  final pulumi.Input<String> vmssName;

  /// Creates a new [GuestConfigurationAssignmentsVMSSArgs].
  /// [location] Region where the VM is located.
  /// [name] The guest configuration assignment name.
  /// [properties] Properties of the Guest configuration assignment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vmssName] The name of the virtual machine scale set.
  const GuestConfigurationAssignmentsVMSSArgs({
    this.location,
    this.name,
    this.properties,
    required this.resourceGroupName,
    required this.vmssName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<GuestConfigurationAssignmentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'vmssName': vmssName,
    };
  }

  factory GuestConfigurationAssignmentsVMSSArgs.fromMap(Map<String, dynamic> map) {
    return GuestConfigurationAssignmentsVMSSArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestConfigurationAssignmentProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      vmssName: pulumi.Input.fromValue(map['vmssName'] as String),
    );
  }
}
