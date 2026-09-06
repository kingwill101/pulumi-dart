// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_policy_properties.dart';

/// {@template pulumi_network_connection_policy_args_doc}
/// The set of arguments for ConnectionPolicy.
/// {@endtemplate}
/// {@macro pulumi_network_connection_policy_args_doc}
class ConnectionPolicyArgs {
  /// The name of the ConnectionPolicy that is unique within a VirtualHub. This name can be used to access the resource.
  final pulumi.Input<String?>? connectionPolicyName;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Properties of the ConnectionPolicy resource.
  final pulumi.Input<ConnectionPolicyProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VirtualHub.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [ConnectionPolicyArgs].
  /// [connectionPolicyName] The name of the ConnectionPolicy that is unique within a VirtualHub. This name can be used to access the resource.
  /// [id] Resource ID.
  /// [properties] Properties of the ConnectionPolicy resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [virtualHubName] The name of the VirtualHub.
  const ConnectionPolicyArgs({
    this.connectionPolicyName,
    this.id,
    this.properties,
    required this.resourceGroupName,
    required this.virtualHubName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPolicyName': ?connectionPolicyName,
      'id': ?id,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConnectionPolicyProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'virtualHubName': virtualHubName,
    };
  }

  factory ConnectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionPolicyArgs(
      connectionPolicyName: (() { final guardedValue = map['connectionPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionPolicyProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      virtualHubName: pulumi.Input.fromValue(map['virtualHubName'] as String),
    );
  }
}
