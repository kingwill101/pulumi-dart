// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfiguration_get_private_endpoint_connection_args_doc}
/// Arguments for getPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_appconfiguration_get_private_endpoint_connection_args_doc}
class GetPrivateEndpointConnectionArgs {
  /// The name of the configuration store.
  final pulumi.Input<String> configStoreName;
  /// Private endpoint connection name
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group to which the container registry belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateEndpointConnectionArgs].
  /// [configStoreName] The name of the configuration store.
  /// [privateEndpointConnectionName] Private endpoint connection name
  /// [resourceGroupName] The name of the resource group to which the container registry belongs.
  GetPrivateEndpointConnectionArgs({
    required String configStoreName,
    required String privateEndpointConnectionName,
    required String resourceGroupName,
  }) :
      configStoreName = pulumi.Input.asInput<String>(configStoreName),
      privateEndpointConnectionName = pulumi.Input.asInput<String>(privateEndpointConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configStoreName': configStoreName,
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionArgs(
      configStoreName: map['configStoreName'] as String,
      privateEndpointConnectionName: map['privateEndpointConnectionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

