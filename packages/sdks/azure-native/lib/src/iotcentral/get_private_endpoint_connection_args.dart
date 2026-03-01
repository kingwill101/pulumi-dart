// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotcentral_get_private_endpoint_connection_args_doc}
/// Arguments for getPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_iotcentral_get_private_endpoint_connection_args_doc}
class GetPrivateEndpointConnectionArgs {
  /// The private endpoint connection name.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group that contains the IoT Central application.
  final pulumi.Input<String> resourceGroupName;
  /// The ARM resource name of the IoT Central application.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetPrivateEndpointConnectionArgs].
  /// [privateEndpointConnectionName] The private endpoint connection name.
  /// [resourceGroupName] The name of the resource group that contains the IoT Central application.
  /// [resourceName] The ARM resource name of the IoT Central application.
  GetPrivateEndpointConnectionArgs({
    required pulumi.Output<String> privateEndpointConnectionName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      privateEndpointConnectionName = pulumi.Input.asInput<String>(privateEndpointConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionArgs(
      privateEndpointConnectionName: pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

