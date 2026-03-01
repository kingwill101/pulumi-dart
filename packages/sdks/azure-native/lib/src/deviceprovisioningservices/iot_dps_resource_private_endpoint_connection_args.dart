// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_properties.dart';

/// {@template pulumi_deviceprovisioningservices_iot_dps_resource_private_endpoint_connection_args_doc}
/// The set of arguments for IotDpsResourcePrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_deviceprovisioningservices_iot_dps_resource_private_endpoint_connection_args_doc}
class IotDpsResourcePrivateEndpointConnectionArgs {
  /// The name of the private endpoint connection
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// The properties of a private endpoint connection
  final pulumi.Input<PrivateEndpointConnectionProperties> properties;
  /// The name of the resource group that contains the provisioning service.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the provisioning service.
  final pulumi.Input<String> resourceName;

  /// Creates a new [IotDpsResourcePrivateEndpointConnectionArgs].
  /// [privateEndpointConnectionName] The name of the private endpoint connection
  /// [properties] The properties of a private endpoint connection
  /// [resourceGroupName] The name of the resource group that contains the provisioning service.
  /// [resourceName] The name of the provisioning service.
  IotDpsResourcePrivateEndpointConnectionArgs({
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

  factory IotDpsResourcePrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return IotDpsResourcePrivateEndpointConnectionArgs(
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      properties: pulumi.Output.create<PrivateEndpointConnectionProperties>(PrivateEndpointConnectionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

