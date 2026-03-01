// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_machine_properties.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_azurestackhci_edge_machine_args_doc}
/// The set of arguments for EdgeMachine.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_edge_machine_args_doc}
class EdgeMachineArgs {
  /// Name of Device
  final pulumi.Input<String>? edgeMachineName;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<EdgeMachineProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EdgeMachineArgs].
  /// [edgeMachineName] Name of Device
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  EdgeMachineArgs({
    String? edgeMachineName,
    ManagedServiceIdentity? identity,
    String? location,
    EdgeMachineProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      edgeMachineName = pulumi.Input.asOptionalInput<String>(edgeMachineName),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<EdgeMachineProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeMachineName': ?edgeMachineName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<EdgeMachineProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory EdgeMachineArgs.fromMap(Map<String, dynamic> map) {
    return EdgeMachineArgs(
      edgeMachineName: map['edgeMachineName'] == null ? null : map['edgeMachineName'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : EdgeMachineProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

