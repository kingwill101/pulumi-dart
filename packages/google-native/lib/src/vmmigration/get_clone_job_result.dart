// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'clone_step_response.dart';
import 'compute_engine_disks_target_details_response.dart';
import 'compute_engine_target_details_response.dart';
import 'status_response.dart';

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
  final StatusResponse error;

  /// The name of the clone.
  final String name;

  /// State of the clone job.
  final String state;

  /// The time the state was last updated.
  final String stateTime;

  /// The clone steps list representing its progress.
  final List<CloneStepResponse> steps;

  /// Creates a new [GetCloneJobResult].
  /// [computeEngineDisksTargetDetails] Details of the target Persistent Disks in Compute Engine.
  /// [computeEngineTargetDetails] Details of the target VM in Compute Engine.
  /// [createTime] The time the clone job was created (as an API call, not when it was actually created in the target).
  /// [endTime] The time the clone job was ended.
  /// [error] Provides details for the errors that led to the Clone Job's state.
  /// [name] The name of the clone.
  /// [state] State of the clone job.
  /// [stateTime] The time the state was last updated.
  /// [steps] The clone steps list representing its progress.
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
    return <String, dynamic>{
      'computeEngineDisksTargetDetails': computeEngineDisksTargetDetails
          .toMap(),
      'computeEngineTargetDetails': computeEngineTargetDetails.toMap(),
      'createTime': createTime,
      'endTime': endTime,
      'error': error.toMap(),
      'name': name,
      'state': state,
      'stateTime': stateTime,
      'steps': pulumi.Input.encodeList<CloneStepResponse, Map<String, dynamic>>(
        steps,
        (value) => value.toMap(),
      ),
    };
  }

  factory GetCloneJobResult.fromMap(Map<String, dynamic> map) {
    return GetCloneJobResult(
      computeEngineDisksTargetDetails:
          ComputeEngineDisksTargetDetailsResponse.fromMap(
            (map['computeEngineDisksTargetDetails'] as Map)
                .cast<String, dynamic>(),
          ),
      computeEngineTargetDetails: ComputeEngineTargetDetailsResponse.fromMap(
        (map['computeEngineTargetDetails'] as Map).cast<String, dynamic>(),
      ),
      createTime: map['createTime'] as String,
      endTime: map['endTime'] as String,
      error: StatusResponse.fromMap(
        (map['error'] as Map).cast<String, dynamic>(),
      ),
      name: map['name'] as String,
      state: map['state'] as String,
      stateTime: map['stateTime'] as String,
      steps: pulumi.Input.decodeList<CloneStepResponse>(
        map['steps'],
        (value) =>
            CloneStepResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
