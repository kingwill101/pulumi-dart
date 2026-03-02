// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_get_network_function_definition_version_args_doc}
/// Arguments for getNetworkFunctionDefinitionVersion.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_get_network_function_definition_version_args_doc}
class GetNetworkFunctionDefinitionVersionArgs {
  /// The name of the network function definition group.
  final pulumi.Input<String> networkFunctionDefinitionGroupName;
  /// The name of the network function definition version. The name should conform to the SemVer 2.0.0 specification: https://semver.org/spec/v2.0.0.html.
  final pulumi.Input<String> networkFunctionDefinitionVersionName;
  /// The name of the publisher.
  final pulumi.Input<String> publisherName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkFunctionDefinitionVersionArgs].
  /// [networkFunctionDefinitionGroupName] The name of the network function definition group.
  /// [networkFunctionDefinitionVersionName] The name of the network function definition version. The name should conform to the SemVer 2.0.0 specification: https://semver.org/spec/v2.0.0.html.
  /// [publisherName] The name of the publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNetworkFunctionDefinitionVersionArgs({
    required this.networkFunctionDefinitionGroupName,
    required this.networkFunctionDefinitionVersionName,
    required this.publisherName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFunctionDefinitionGroupName': networkFunctionDefinitionGroupName,
      'networkFunctionDefinitionVersionName': networkFunctionDefinitionVersionName,
      'publisherName': publisherName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkFunctionDefinitionVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkFunctionDefinitionVersionArgs(
      networkFunctionDefinitionGroupName: (map['networkFunctionDefinitionGroupName'] as String).input(),
      networkFunctionDefinitionVersionName: (map['networkFunctionDefinitionVersionName'] as String).input(),
      publisherName: (map['publisherName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

