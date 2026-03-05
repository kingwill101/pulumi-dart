// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_node_customization_args_doc}
/// Arguments for getNodeCustomization.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_node_customization_args_doc}
class GetNodeCustomizationArgs {
  /// The name of the Node Customization resource.
  final pulumi.Input<String> nodeCustomizationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNodeCustomizationArgs].
  /// [nodeCustomizationName] The name of the Node Customization resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNodeCustomizationArgs({
    required this.nodeCustomizationName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeCustomizationName': nodeCustomizationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNodeCustomizationArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeCustomizationArgs(
      nodeCustomizationName: pulumi.Input.fromValue(map['nodeCustomizationName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

