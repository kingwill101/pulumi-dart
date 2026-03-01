// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_private_endpoint_connection_by_name_args_doc}
/// Arguments for getPrivateEndpointConnectionByName.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_private_endpoint_connection_by_name_args_doc}
class GetPrivateEndpointConnectionByNameArgs {
  /// Name of the private endpoint connection.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetPrivateEndpointConnectionByNameArgs].
  /// [privateEndpointConnectionName] Name of the private endpoint connection.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetPrivateEndpointConnectionByNameArgs({
    required String privateEndpointConnectionName,
    required String resourceGroupName,
    required String serviceName,
  }) :
      privateEndpointConnectionName = pulumi.Input.asInput<String>(privateEndpointConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetPrivateEndpointConnectionByNameArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionByNameArgs(
      privateEndpointConnectionName: map['privateEndpointConnectionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

