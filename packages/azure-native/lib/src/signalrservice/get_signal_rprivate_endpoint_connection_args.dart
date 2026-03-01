// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_signalrservice_get_signal_rprivate_endpoint_connection_args_doc}
/// Arguments for getSignalRPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_signalrservice_get_signal_rprivate_endpoint_connection_args_doc}
class GetSignalRPrivateEndpointConnectionArgs {
  /// The name of the private endpoint connection associated with the Azure resource.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetSignalRPrivateEndpointConnectionArgs].
  /// [privateEndpointConnectionName] The name of the private endpoint connection associated with the Azure resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  GetSignalRPrivateEndpointConnectionArgs({
    required String privateEndpointConnectionName,
    required String resourceGroupName,
    required String resourceName,
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

  factory GetSignalRPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetSignalRPrivateEndpointConnectionArgs(
      privateEndpointConnectionName: map['privateEndpointConnectionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

