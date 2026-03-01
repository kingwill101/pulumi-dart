// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_proxy_properties.dart';

/// {@template pulumi_datareplication_private_endpoint_connection_proxy_args_doc}
/// The set of arguments for PrivateEndpointConnectionProxy.
/// {@endtemplate}
/// {@macro pulumi_datareplication_private_endpoint_connection_proxy_args_doc}
class PrivateEndpointConnectionProxyArgs {
  /// The private endpoint connection proxy name.
  final pulumi.Input<String>? privateEndpointConnectionProxyName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<PrivateEndpointConnectionProxyProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The vault name.
  final pulumi.Input<String> vaultName;

  /// Creates a new [PrivateEndpointConnectionProxyArgs].
  /// [privateEndpointConnectionProxyName] The private endpoint connection proxy name.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vaultName] The vault name.
  PrivateEndpointConnectionProxyArgs({
    pulumi.Output<String>? privateEndpointConnectionProxyName,
    pulumi.Output<PrivateEndpointConnectionProxyProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vaultName,
  }) :
      privateEndpointConnectionProxyName = pulumi.Input.asOptionalInput<String>(privateEndpointConnectionProxyName),
      properties = pulumi.Input.asOptionalInput<PrivateEndpointConnectionProxyProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionProxyName': ?privateEndpointConnectionProxyName,
      'properties': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointConnectionProxyProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory PrivateEndpointConnectionProxyArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionProxyArgs(
      privateEndpointConnectionProxyName: map['privateEndpointConnectionProxyName'] == null ? null : pulumi.Output.create<String>(map['privateEndpointConnectionProxyName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<PrivateEndpointConnectionProxyProperties>(PrivateEndpointConnectionProxyProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vaultName: pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

