// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_get_network_function_definition_group_args_doc}
/// Arguments for getNetworkFunctionDefinitionGroup.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_get_network_function_definition_group_args_doc}
class GetNetworkFunctionDefinitionGroupArgs {
  /// The name of the network function definition group.
  final pulumi.Input<String> networkFunctionDefinitionGroupName;
  /// The name of the publisher.
  final pulumi.Input<String> publisherName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkFunctionDefinitionGroupArgs].
  /// [networkFunctionDefinitionGroupName] The name of the network function definition group.
  /// [publisherName] The name of the publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNetworkFunctionDefinitionGroupArgs({
    required this.networkFunctionDefinitionGroupName,
    required this.publisherName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFunctionDefinitionGroupName': networkFunctionDefinitionGroupName,
      'publisherName': publisherName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkFunctionDefinitionGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkFunctionDefinitionGroupArgs(
      networkFunctionDefinitionGroupName: (map['networkFunctionDefinitionGroupName'] as String).input(),
      publisherName: (map['publisherName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

