// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_get_mhsmprivate_endpoint_connection_args_doc}
/// Arguments for getMHSMPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_keyvault_get_mhsmprivate_endpoint_connection_args_doc}
class GetMHSMPrivateEndpointConnectionArgs {
  /// Name of the managed HSM Pool
  final pulumi.Input<String> name;
  /// Name of the private endpoint connection associated with the managed hsm pool.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// Name of the resource group that contains the managed HSM pool.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMHSMPrivateEndpointConnectionArgs].
  /// [name] Name of the managed HSM Pool
  /// [privateEndpointConnectionName] Name of the private endpoint connection associated with the managed hsm pool.
  /// [resourceGroupName] Name of the resource group that contains the managed HSM pool.
  GetMHSMPrivateEndpointConnectionArgs({
    required String name,
    required String privateEndpointConnectionName,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      privateEndpointConnectionName = pulumi.Input.asInput<String>(privateEndpointConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMHSMPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetMHSMPrivateEndpointConnectionArgs(
      name: map['name'] as String,
      privateEndpointConnectionName: map['privateEndpointConnectionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

