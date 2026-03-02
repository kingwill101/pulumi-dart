// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_edge_action_args_doc}
/// Arguments for getEdgeAction.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_edge_action_args_doc}
class GetEdgeActionArgs {
  /// The name of the Edge Action
  final pulumi.Input<String> edgeActionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEdgeActionArgs].
  /// [edgeActionName] The name of the Edge Action
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEdgeActionArgs({
    required this.edgeActionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeActionName': edgeActionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEdgeActionArgs.fromMap(Map<String, dynamic> map) {
    return GetEdgeActionArgs(
      edgeActionName: (map['edgeActionName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

