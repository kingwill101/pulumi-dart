// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_get_network_function_args_doc}
/// Arguments for getNetworkFunction.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_get_network_function_args_doc}
class GetNetworkFunctionArgs {
  /// The name of the network function resource.
  final pulumi.Input<String> networkFunctionName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkFunctionArgs].
  /// [networkFunctionName] The name of the network function resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNetworkFunctionArgs({
    required this.networkFunctionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFunctionName': networkFunctionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkFunctionArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkFunctionArgs(
      networkFunctionName: pulumi.Input.fromValue(
        map['networkFunctionName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
