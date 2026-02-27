// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'clone_step_response2.dart';
import 'compute_engine_disks_target_details_response2.dart';
import 'compute_engine_target_details_response2.dart';
import 'status_response31.dart';
import 'target_vmdetails_response.dart';

/// Result data returned by getCloneJob.
class GetCloneJobResult2 {
  /// Details of the target Persistent Disks in Compute Engine.
  final ComputeEngineDisksTargetDetailsResponse2
      computeEngineDisksTargetDetails;

  /// Details of the target VM in Compute Engine.
  final ComputeEngineTargetDetailsResponse2 computeEngineTargetDetails;

  /// Details of the VM in Compute Engine. Deprecated: Use compute_engine_target_details instead.
  final TargetVMDetailsResponse computeEngineVmDetails;

  /// The time the clone job was created (as an API call, not when it was actually created in the target).
  final String createTime;

  /// The time the clone job was ended.
  final String endTime;

  /// Provides details for the errors that led to the Clone Job's state.
  final StatusResponse31 error;

  /// The name of the clone.
  final String name;

  /// State of the clone job.
  final String state;

  /// The time the state was last updated.
  final String stateTime;

  /// The clone steps list representing its progress.
  final List<CloneStepResponse2> steps;

  /// Details of the VM to create as the target of this clone job. Deprecated: Use compute_engine_target_details instead.
  final TargetVMDetailsResponse targetDetails;

  GetCloneJobResult2({
    required this.computeEngineDisksTargetDetails,
    required this.computeEngineTargetDetails,
    required this.computeEngineVmDetails,
    required this.createTime,
    required this.endTime,
    required this.error,
    required this.name,
    required this.state,
    required this.stateTime,
    required this.steps,
    required this.targetDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['computeEngineDisksTargetDetails'] =
        computeEngineDisksTargetDetails.toMap();
    map['computeEngineTargetDetails'] = computeEngineTargetDetails.toMap();
    map['computeEngineVmDetails'] = computeEngineVmDetails.toMap();
    map['createTime'] = createTime;
    map['endTime'] = endTime;
    map['error'] = error.toMap();
    map['name'] = name;
    map['state'] = state;
    map['stateTime'] = stateTime;
    map['steps'] = Input.encodeList<CloneStepResponse2, Map<String, dynamic>>(
        steps, (value) => value.toMap());
    map['targetDetails'] = targetDetails.toMap();
    return map;
  }

  factory GetCloneJobResult2.fromMap(Map<String, dynamic> map) {
    return GetCloneJobResult2(
      computeEngineDisksTargetDetails:
          ComputeEngineDisksTargetDetailsResponse2.fromMap(
              (map['computeEngineDisksTargetDetails'] as Map)
                  .cast<String, dynamic>()),
      computeEngineTargetDetails: ComputeEngineTargetDetailsResponse2.fromMap(
          (map['computeEngineTargetDetails'] as Map).cast<String, dynamic>()),
      computeEngineVmDetails: TargetVMDetailsResponse.fromMap(
          (map['computeEngineVmDetails'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      endTime: map['endTime'] as String,
      error: StatusResponse31.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      state: map['state'] as String,
      stateTime: map['stateTime'] as String,
      steps: Input.decodeList<CloneStepResponse2>(
          map['steps'],
          (value) => CloneStepResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      targetDetails: TargetVMDetailsResponse.fromMap(
          (map['targetDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
