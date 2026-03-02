// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_edge_action_execution_filter_args_doc}
/// Arguments for getEdgeActionExecutionFilter.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_edge_action_execution_filter_args_doc}
class GetEdgeActionExecutionFilterArgs {
  /// The name of the Edge Action
  final pulumi.Input<String> edgeActionName;
  /// The name of the execution filter
  final pulumi.Input<String> executionFilter;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEdgeActionExecutionFilterArgs].
  /// [edgeActionName] The name of the Edge Action
  /// [executionFilter] The name of the execution filter
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEdgeActionExecutionFilterArgs({
    required this.edgeActionName,
    required this.executionFilter,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeActionName': edgeActionName,
      'executionFilter': executionFilter,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEdgeActionExecutionFilterArgs.fromMap(Map<String, dynamic> map) {
    return GetEdgeActionExecutionFilterArgs(
      edgeActionName: (map['edgeActionName'] as String).input(),
      executionFilter: (map['executionFilter'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

