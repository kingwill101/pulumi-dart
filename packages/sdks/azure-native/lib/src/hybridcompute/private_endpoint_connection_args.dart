// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_properties.dart';

/// {@template pulumi_hybridcompute_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_hybridcompute_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// The name of the private endpoint connection.
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// Resource properties.
  final pulumi.Input<PrivateEndpointConnectionProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Azure Arc PrivateLinkScope resource.
  final pulumi.Input<String> scopeName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [privateEndpointConnectionName] The name of the private endpoint connection.
  /// [properties] Resource properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scopeName] The name of the Azure Arc PrivateLinkScope resource.
  PrivateEndpointConnectionArgs({
    pulumi.Output<String>? privateEndpointConnectionName,
    pulumi.Output<PrivateEndpointConnectionProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> scopeName,
  }) :
      privateEndpointConnectionName = pulumi.Input.asOptionalInput<String>(privateEndpointConnectionName),
      properties = pulumi.Input.asOptionalInput<PrivateEndpointConnectionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scopeName = pulumi.Input.asInput<String>(scopeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'properties': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointConnectionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'scopeName': scopeName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<PrivateEndpointConnectionProperties>(PrivateEndpointConnectionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scopeName: pulumi.Output.create<String>(map['scopeName'] as String),
    );
  }
}

