// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_edge_action_execution_filter_args_doc}
/// The set of arguments for EdgeActionExecutionFilter.
/// {@endtemplate}
/// {@macro pulumi_cdn_edge_action_execution_filter_args_doc}
class EdgeActionExecutionFilterArgs {
  /// The name of the Edge Action
  final pulumi.Input<String> edgeActionName;
  /// The name of the execution filter
  final pulumi.Input<String>? executionFilter;
  /// Custom Header Key associated with the execution filter
  final pulumi.Input<String> executionFilterIdentifierHeaderName;
  /// Custom Header Value associated with the execution filter
  final pulumi.Input<String> executionFilterIdentifierHeaderValue;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The referenced versionId of the edgeaction version
  final pulumi.Input<String> versionId;

  /// Creates a new [EdgeActionExecutionFilterArgs].
  /// [edgeActionName] The name of the Edge Action
  /// [executionFilter] The name of the execution filter
  /// [executionFilterIdentifierHeaderName] Custom Header Key associated with the execution filter
  /// [executionFilterIdentifierHeaderValue] Custom Header Value associated with the execution filter
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [versionId] The referenced versionId of the edgeaction version
  const EdgeActionExecutionFilterArgs({
    required this.edgeActionName,
    this.executionFilter,
    required this.executionFilterIdentifierHeaderName,
    required this.executionFilterIdentifierHeaderValue,
    this.location,
    required this.resourceGroupName,
    this.tags,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeActionName': edgeActionName,
      'executionFilter': ?executionFilter,
      'executionFilterIdentifierHeaderName': executionFilterIdentifierHeaderName,
      'executionFilterIdentifierHeaderValue': executionFilterIdentifierHeaderValue,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'versionId': versionId,
    };
  }

  factory EdgeActionExecutionFilterArgs.fromMap(Map<String, dynamic> map) {
    return EdgeActionExecutionFilterArgs(
      edgeActionName: pulumi.Input.fromValue(map['edgeActionName'] as String),
      executionFilter: (() { final guardedValue = map['executionFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionFilterIdentifierHeaderName: pulumi.Input.fromValue(map['executionFilterIdentifierHeaderName'] as String),
      executionFilterIdentifierHeaderValue: pulumi.Input.fromValue(map['executionFilterIdentifierHeaderValue'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
    );
  }
}

