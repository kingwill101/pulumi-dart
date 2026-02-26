// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'clone_step_response.dart';
import 'compute_engine_disks_target_details_response.dart';
import 'compute_engine_target_details_response.dart';
import 'status_response30.dart';

/// Result data returned by getCloneJob.
class GetCloneJobResult {
  /// Details of the target Persistent Disks in Compute Engine.
  final ComputeEngineDisksTargetDetailsResponse computeEngineDisksTargetDetails;

  /// Details of the target VM in Compute Engine.
  final ComputeEngineTargetDetailsResponse computeEngineTargetDetails;

  /// The time the clone job was created (as an API call, not when it was actually created in the target).
  final String createTime;

  /// The time the clone job was ended.
  final String endTime;

  /// Provides details for the errors that led to the Clone Job's state.
  final StatusResponse30 error;

  /// The name of the clone.
  final String name;

  /// State of the clone job.
  final String state;

  /// The time the state was last updated.
  final String stateTime;

  /// The clone steps list representing its progress.
  final List<CloneStepResponse> steps;

  GetCloneJobResult({
    required this.computeEngineDisksTargetDetails,
    required this.computeEngineTargetDetails,
    required this.createTime,
    required this.endTime,
    required this.error,
    required this.name,
    required this.state,
    required this.stateTime,
    required this.steps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['computeEngineDisksTargetDetails'] =
        computeEngineDisksTargetDetails.toMap();
    map['computeEngineTargetDetails'] = computeEngineTargetDetails.toMap();
    map['createTime'] = createTime;
    map['endTime'] = endTime;
    map['error'] = error.toMap();
    map['name'] = name;
    map['state'] = state;
    map['stateTime'] = stateTime;
    map['steps'] = Input.encodeList<CloneStepResponse, Map<String, dynamic>>(
        steps, (value) => value.toMap());
    return map;
  }

  factory GetCloneJobResult.fromMap(Map<String, dynamic> map) {
    return GetCloneJobResult(
      computeEngineDisksTargetDetails:
          ComputeEngineDisksTargetDetailsResponse.fromMap(
              (map['computeEngineDisksTargetDetails'] as Map)
                  .cast<String, dynamic>()),
      computeEngineTargetDetails: ComputeEngineTargetDetailsResponse.fromMap(
          (map['computeEngineTargetDetails'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      endTime: map['endTime'] as String,
      error: StatusResponse30.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      state: map['state'] as String,
      stateTime: map['stateTime'] as String,
      steps: Input.decodeList<CloneStepResponse>(
          map['steps'],
          (value) => CloneStepResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
