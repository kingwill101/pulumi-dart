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
    this.privateEndpointConnectionProxyName,
    this.properties,
    required this.resourceGroupName,
    required this.vaultName,
  });

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
      privateEndpointConnectionProxyName: map['privateEndpointConnectionProxyName'] == null ? null : (map['privateEndpointConnectionProxyName']! as String).input(),
      properties: map['properties'] == null ? null : (PrivateEndpointConnectionProxyProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      vaultName: (map['vaultName'] as String).input(),
    );
  }
}

