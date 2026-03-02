// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_managed_environment_private_endpoint_connection_args_doc}
/// Arguments for getManagedEnvironmentPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_app_get_managed_environment_private_endpoint_connection_args_doc}
class GetManagedEnvironmentPrivateEndpointConnectionArgs {
  /// Name of the Managed Environment.
  final pulumi.Input<String> environmentName;
  /// The name of the private endpoint connection associated with the Azure resource.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedEnvironmentPrivateEndpointConnectionArgs].
  /// [environmentName] Name of the Managed Environment.
  /// [privateEndpointConnectionName] The name of the private endpoint connection associated with the Azure resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetManagedEnvironmentPrivateEndpointConnectionArgs({
    required this.environmentName,
    required this.privateEndpointConnectionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedEnvironmentPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedEnvironmentPrivateEndpointConnectionArgs(
      environmentName: (map['environmentName'] as String).input(),
      privateEndpointConnectionName: (map['privateEndpointConnectionName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

