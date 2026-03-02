// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_private_endpoint_connection_args_doc}
/// Arguments for getPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_private_endpoint_connection_args_doc}
class GetPrivateEndpointConnectionArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The private endpoint connection name.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateEndpointConnectionArgs].
  /// [factoryName] The factory name.
  /// [privateEndpointConnectionName] The private endpoint connection name.
  /// [resourceGroupName] The resource group name.
  GetPrivateEndpointConnectionArgs({
    required this.factoryName,
    required this.privateEndpointConnectionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionArgs(
      factoryName: (map['factoryName'] as String).input(),
      privateEndpointConnectionName: (map['privateEndpointConnectionName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

