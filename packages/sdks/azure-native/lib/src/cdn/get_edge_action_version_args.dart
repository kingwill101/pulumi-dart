// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_edge_action_version_args_doc}
/// Arguments for getEdgeActionVersion.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_edge_action_version_args_doc}
class GetEdgeActionVersionArgs {
  /// The name of the Edge Action
  final pulumi.Input<String> edgeActionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Edge Action version
  final pulumi.Input<String> version;

  /// Creates a new [GetEdgeActionVersionArgs].
  /// [edgeActionName] The name of the Edge Action
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] The name of the Edge Action version
  GetEdgeActionVersionArgs({
    required pulumi.Output<String> edgeActionName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> version,
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

  factory GetEdgeActionVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetEdgeActionVersionArgs(
      edgeActionName: pulumi.Output.create<String>(map['edgeActionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      version: pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

