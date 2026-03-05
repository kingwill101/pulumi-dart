// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stage_spec_response.dart';

/// Workflow Version Properties
class WorkflowVersionPropertiesResponse {
  /// Resolved configuration values
  final pulumi.Input<String> configuration;
  /// Provisioning state of resource
  final pulumi.Input<String> provisioningState;
  /// Review id of resolved config for this workflow version
  final pulumi.Input<String> reviewId;
  /// Revision number of resolved config for this workflow version
  final pulumi.Input<int> revision;
  /// Execution specification
  final pulumi.Input<dynamic>? specification;
  /// A list of stage specs
  final pulumi.Input<List<StageSpecResponse>> stageSpec;
  /// State of workflow version
  final pulumi.Input<String> state;

  /// Creates a new [WorkflowVersionPropertiesResponse].
  /// [configuration] Resolved configuration values
  /// [provisioningState] Provisioning state of resource
  /// [reviewId] Review id of resolved config for this workflow version
  /// [revision] Revision number of resolved config for this workflow version
  /// [specification] Execution specification
  /// [stageSpec] A list of stage specs
  /// [state] State of workflow version
  WorkflowVersionPropertiesResponse({
    required this.configuration,
    required this.provisioningState,
    required this.reviewId,
    required this.revision,
    this.specification,
    required this.stageSpec,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': configuration,
      'provisioningState': provisioningState,
      'reviewId': reviewId,
      'revision': revision,
      'specification': ?specification,
      'stageSpec': pulumi.Input.mapInputValue<List<StageSpecResponse>, List<Map<String, dynamic>>>(stageSpec, (value) => pulumi.Input.encodeList<StageSpecResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': state,
    };
  }

  factory WorkflowVersionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return WorkflowVersionPropertiesResponse(
      configuration: pulumi.Input.fromValue(map['configuration'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      reviewId: pulumi.Input.fromValue(map['reviewId'] as String),
      revision: pulumi.Input.fromValue(map['revision'] as int),
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      stageSpec: pulumi.Input.fromValue(pulumi.Input.decodeList<StageSpecResponse>(map['stageSpec']!, (value) => StageSpecResponse.fromMap((value as Map).cast<String, dynamic>()))),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

