// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_response_properties.dart';

/// {@template pulumi_datareplication_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_datareplication_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// The private endpoint connection name.
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<PrivateEndpointConnectionResponseProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The vault name.
  final pulumi.Input<String> vaultName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [privateEndpointConnectionName] The private endpoint connection name.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vaultName] The vault name.
  PrivateEndpointConnectionArgs({
    pulumi.Output<String>? privateEndpointConnectionName,
    pulumi.Output<PrivateEndpointConnectionResponseProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vaultName,
  }) :
      privateEndpointConnectionName = pulumi.Input.asOptionalInput<String>(privateEndpointConnectionName),
      properties = pulumi.Input.asOptionalInput<PrivateEndpointConnectionResponseProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'properties': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointConnectionResponseProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<PrivateEndpointConnectionResponseProperties>(PrivateEndpointConnectionResponseProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vaultName: pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

