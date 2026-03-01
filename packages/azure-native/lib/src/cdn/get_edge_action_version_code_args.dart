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
  GetEdgeActionVersionCodeArgs({
    required String edgeActionName,
    required String resourceGroupName,
    required String version,
  }) :
      edgeActionName = pulumi.Input.asInput<String>(edgeActionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      version = pulumi.Input.asInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeActionName': edgeActionName,
      'resourceGroupName': resourceGroupName,
      'version': version,
    };
  }

  factory GetEdgeActionVersionCodeArgs.fromMap(Map<String, dynamic> map) {
    return GetEdgeActionVersionCodeArgs(
      edgeActionName: map['edgeActionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      version: map['version'] as String,
    );
  }
}

