// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_private_link_service_private_endpoint_connection_args_doc}
/// Arguments for getPrivateLinkServicePrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_network_get_private_link_service_private_endpoint_connection_args_doc}
class GetPrivateLinkServicePrivateEndpointConnectionArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of the private end point connection.
  final pulumi.Input<String> peConnectionName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the private link service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetPrivateLinkServicePrivateEndpointConnectionArgs].
  /// [expand] Expands referenced resources.
  /// [peConnectionName] The name of the private end point connection.
  /// [resourceGroupName] The name of the resource group.
  /// [serviceName] The name of the private link service.
  GetPrivateLinkServicePrivateEndpointConnectionArgs({
    String? expand,
    required String peConnectionName,
    required String resourceGroupName,
    required String serviceName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      peConnectionName = pulumi.Input.asInput<String>(peConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'peConnectionName': peConnectionName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetPrivateLinkServicePrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkServicePrivateEndpointConnectionArgs(
      expand: map['expand'] == null ? null : map['expand'] as String,
      peConnectionName: map['peConnectionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

