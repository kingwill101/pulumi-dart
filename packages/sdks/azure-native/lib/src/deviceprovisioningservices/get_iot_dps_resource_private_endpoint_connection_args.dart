// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceprovisioningservices_get_iot_dps_resource_private_endpoint_connection_args_doc}
/// Arguments for getIotDpsResourcePrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_deviceprovisioningservices_get_iot_dps_resource_private_endpoint_connection_args_doc}
class GetIotDpsResourcePrivateEndpointConnectionArgs {
  /// The name of the private endpoint connection
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group that contains the provisioning service.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the provisioning service.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetIotDpsResourcePrivateEndpointConnectionArgs].
  /// [privateEndpointConnectionName] The name of the private endpoint connection
  /// [resourceGroupName] The name of the resource group that contains the provisioning service.
  /// [resourceName] The name of the provisioning service.
  const GetIotDpsResourcePrivateEndpointConnectionArgs({
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

  factory GetIotDpsResourcePrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetIotDpsResourcePrivateEndpointConnectionArgs(
      privateEndpointConnectionName: pulumi.Input.fromValue(map['privateEndpointConnectionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}

