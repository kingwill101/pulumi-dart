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
  EdgeActionExecutionFilterArgs({
    required String edgeActionName,
    String? executionFilter,
    required String executionFilterIdentifierHeaderName,
    required String executionFilterIdentifierHeaderValue,
    String? location,
    required String resourceGroupName,
    Map<String, String>? tags,
    required String versionId,
  }) :
      edgeActionName = pulumi.Input.asInput<String>(edgeActionName),
      executionFilter = pulumi.Input.asOptionalInput<String>(executionFilter),
      executionFilterIdentifierHeaderName = pulumi.Input.asInput<String>(executionFilterIdentifierHeaderName),
      executionFilterIdentifierHeaderValue = pulumi.Input.asInput<String>(executionFilterIdentifierHeaderValue),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      versionId = pulumi.Input.asInput<String>(versionId);

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
      edgeActionName: map['edgeActionName'] as String,
      executionFilter: map['executionFilter'] == null ? null : map['executionFilter'] as String,
      executionFilterIdentifierHeaderName: map['executionFilterIdentifierHeaderName'] as String,
      executionFilterIdentifierHeaderValue: map['executionFilterIdentifierHeaderValue'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      versionId: map['versionId'] as String,
    );
  }
}

