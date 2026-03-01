// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stage_spec_response.dart';

/// Workflow Version Properties
class WorkflowVersionPropertiesResponse {
  /// Resolved configuration values
  final String configuration;
  /// Provisioning state of resource
  final String provisioningState;
  /// Review id of resolved config for this workflow version
  final String reviewId;
  /// Revision number of resolved config for this workflow version
  final int revision;
  /// Execution specification
  final dynamic specification;
  /// A list of stage specs
  final List<StageSpecResponse> stageSpec;
  /// State of workflow version
  final String state;

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
      'stageSpec': pulumi.Input.encodeList<StageSpecResponse, Map<String, dynamic>>(stageSpec, (value) => value.toMap()),
      'state': state,
    };
  }

  factory WorkflowVersionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return WorkflowVersionPropertiesResponse(
      configuration: map['configuration'] as String,
      provisioningState: map['provisioningState'] as String,
      reviewId: map['reviewId'] as String,
      revision: map['revision'] as int,
      specification: map['specification'] == null ? null : map['specification'],
      stageSpec: pulumi.Input.decodeList<StageSpecResponse>(map['stageSpec'], (value) => StageSpecResponse.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
    );
  }
}

