// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_m365securityandcompliance_get_private_endpoint_connections_sec_args_doc}
/// Arguments for getPrivateEndpointConnectionsSec.
/// {@endtemplate}
/// {@macro pulumi_m365securityandcompliance_get_private_endpoint_connections_sec_args_doc}
class GetPrivateEndpointConnectionsSecArgs {
  /// The name of the private endpoint connection associated with the Azure resource
  final pulumi.Input<String> privateEndpointConnectionName;

  /// The name of the resource group that contains the service instance.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the service instance.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetPrivateEndpointConnectionsSecArgs].
  /// [privateEndpointConnectionName] The name of the private endpoint connection associated with the Azure resource
  /// [resourceGroupName] The name of the resource group that contains the service instance.
  /// [resourceName] The name of the service instance.
  GetPrivateEndpointConnectionsSecArgs({
    required this.privateEndpointConnectionName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetPrivateEndpointConnectionsSecArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPrivateEndpointConnectionsSecArgs(
      privateEndpointConnectionName: pulumi.Input.fromValue(
        map['privateEndpointConnectionName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
