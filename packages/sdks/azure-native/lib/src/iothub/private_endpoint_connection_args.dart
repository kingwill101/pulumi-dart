// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_properties.dart';

/// {@template pulumi_iothub_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_iothub_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// The name of the private endpoint connection
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// The properties of a private endpoint connection
  final pulumi.Input<PrivateEndpointConnectionProperties> properties;
  /// The name of the resource group that contains the IoT hub.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the IoT hub.
  final pulumi.Input<String> resourceName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [privateEndpointConnectionName] The name of the private endpoint connection
  /// [properties] The properties of a private endpoint connection
  /// [resourceGroupName] The name of the resource group that contains the IoT hub.
  /// [resourceName] The name of the IoT hub.
  PrivateEndpointConnectionArgs({
    pulumi.Output<String>? privateEndpointConnectionName,
    required pulumi.Output<PrivateEndpointConnectionProperties> properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      privateEndpointConnectionName = pulumi.Input.asOptionalInput<String>(privateEndpointConnectionName),
      properties = pulumi.Input.asInput<PrivateEndpointConnectionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'properties': pulumi.Input.mapInputValue<PrivateEndpointConnectionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      properties: pulumi.Output.create<PrivateEndpointConnectionProperties>(PrivateEndpointConnectionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

