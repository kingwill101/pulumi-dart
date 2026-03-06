// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_edge_action_version_code_args_doc}
/// Arguments for getEdgeActionVersionCode.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_edge_action_version_code_args_doc}
class GetEdgeActionVersionCodeArgs {
  /// The name of the Edge Action
  final pulumi.Input<String> edgeActionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Edge Action version
  final pulumi.Input<String> version;

  /// Creates a new [GetEdgeActionVersionCodeArgs].
  /// [edgeActionName] The name of the Edge Action
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] The name of the Edge Action version
  const GetEdgeActionVersionCodeArgs({
    required this.edgeActionName,
    required this.resourceGroupName,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeActionName': edgeActionName,
      'resourceGroupName': resourceGroupName,
      'version': version,
    };
  }

  factory GetEdgeActionVersionCodeArgs.fromMap(Map<String, dynamic> map) {
    return GetEdgeActionVersionCodeArgs(
      edgeActionName: pulumi.Input.fromValue(map['edgeActionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

