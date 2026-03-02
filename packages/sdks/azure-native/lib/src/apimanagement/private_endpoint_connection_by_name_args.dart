// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_request_properties.dart';

/// {@template pulumi_apimanagement_private_endpoint_connection_by_name_args_doc}
/// The set of arguments for PrivateEndpointConnectionByName.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_private_endpoint_connection_by_name_args_doc}
class PrivateEndpointConnectionByNameArgs {
  /// Private Endpoint Connection Resource Id.
  final pulumi.Input<String>? id;
  /// Name of the private endpoint connection.
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// The connection state of the private endpoint connection.
  final pulumi.Input<PrivateEndpointConnectionRequestProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [PrivateEndpointConnectionByNameArgs].
  /// [id] Private Endpoint Connection Resource Id.
  /// [privateEndpointConnectionName] Name of the private endpoint connection.
  /// [properties] The connection state of the private endpoint connection.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  PrivateEndpointConnectionByNameArgs({
    this.id,
    this.privateEndpointConnectionName,
    this.properties,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'properties': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointConnectionRequestProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory PrivateEndpointConnectionByNameArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionByNameArgs(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : (map['privateEndpointConnectionName']! as String).input(),
      properties: map['properties'] == null ? null : (PrivateEndpointConnectionRequestProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

