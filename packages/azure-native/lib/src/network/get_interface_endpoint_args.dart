// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_interface_endpoint_args_doc}
/// Arguments for getInterfaceEndpoint.
/// {@endtemplate}
/// {@macro pulumi_network_get_interface_endpoint_args_doc}
class GetInterfaceEndpointArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of the interface endpoint.
  final pulumi.Input<String> interfaceEndpointName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetInterfaceEndpointArgs].
  /// [expand] Expands referenced resources.
  /// [interfaceEndpointName] The name of the interface endpoint.
  /// [resourceGroupName] The name of the resource group.
  GetInterfaceEndpointArgs({
    String? expand,
    required String interfaceEndpointName,
    required String resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      interfaceEndpointName = pulumi.Input.asInput<String>(interfaceEndpointName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'interfaceEndpointName': interfaceEndpointName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetInterfaceEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetInterfaceEndpointArgs(
      expand: map['expand'] == null ? null : map['expand'] as String,
      interfaceEndpointName: map['interfaceEndpointName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

