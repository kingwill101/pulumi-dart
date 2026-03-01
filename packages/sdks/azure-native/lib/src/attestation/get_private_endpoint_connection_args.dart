// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_attestation_get_private_endpoint_connection_args_doc}
/// Arguments for getPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_attestation_get_private_endpoint_connection_args_doc}
class GetPrivateEndpointConnectionArgs {
  /// The name of the private endpoint connection associated with the Azure resource
  final pulumi.Input<String> privateEndpointConnectionName;
  /// Name of the attestation provider.
  final pulumi.Input<String> providerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateEndpointConnectionArgs].
  /// [privateEndpointConnectionName] The name of the private endpoint connection associated with the Azure resource
  /// [providerName] Name of the attestation provider.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPrivateEndpointConnectionArgs({
    required pulumi.Output<String> privateEndpointConnectionName,
    required pulumi.Output<String> providerName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      privateEndpointConnectionName = pulumi.Input.asInput<String>(privateEndpointConnectionName),
      providerName = pulumi.Input.asInput<String>(providerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'providerName': providerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionArgs(
      privateEndpointConnectionName: pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      providerName: pulumi.Output.create<String>(map['providerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

