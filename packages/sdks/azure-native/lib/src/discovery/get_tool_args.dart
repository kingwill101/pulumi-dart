// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discovery_get_tool_args_doc}
/// Arguments for getTool.
/// {@endtemplate}
/// {@macro pulumi_discovery_get_tool_args_doc}
class GetToolArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Tool
  final pulumi.Input<String> toolName;

  /// Creates a new [GetToolArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [toolName] The name of the Tool
  const GetToolArgs({
    required this.resourceGroupName,
    required this.toolName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'toolName': toolName,
    };
  }

  factory GetToolArgs.fromMap(Map<String, dynamic> map) {
    return GetToolArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      toolName: pulumi.Input.fromValue(map['toolName'] as String),
    );
  }
}
