// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'compute_engine_disks_target_details_response2.dart';
import 'compute_engine_target_details_response2.dart';
import 'cutover_step_response2.dart';
import 'status_response31.dart';
import 'target_vmdetails_response.dart';

/// CutoverJob message describes a cutover of a migrating VM. The CutoverJob is the operation of shutting down the VM, creating a snapshot and clonning the VM using the replicated snapshot.
class CutoverJobResponse2 {
  /// Details of the target Persistent Disks in Compute Engine.
  final ComputeEngineDisksTargetDetailsResponse2
      computeEngineDisksTargetDetails;

  /// Details of the target VM in Compute Engine.
  final ComputeEngineTargetDetailsResponse2 computeEngineTargetDetails;

  /// Details of the VM in Compute Engine. Deprecated: Use compute_engine_target_details instead.
  final TargetVMDetailsResponse computeEngineVmDetails;

  /// The time the cutover job was created (as an API call, not when it was actually created in the target).
  final String createTime;

  /// The time the cutover job had finished.
  final String endTime;

  /// Provides details for the errors that led to the Cutover Job's state.
  final StatusResponse31 error;

  /// The name of the cutover job.
  final String name;

  /// The current progress in percentage of the cutover job.
  final int progress;

  /// The current progress in percentage of the cutover job.
  final int progressPercent;

  /// State of the cutover job.
  final String state;

  /// A message providing possible extra details about the current state.
  final String stateMessage;

  /// The time the state was last updated.
  final String stateTime;

  /// The cutover steps list representing its progress.
  final List<CutoverStepResponse2> steps;

  /// Details of the VM to create as the target of this cutover job. Deprecated: Use compute_engine_target_details instead.
  final TargetVMDetailsResponse targetDetails;

  CutoverJobResponse2({
    required this.computeEngineDisksTargetDetails,
    required this.computeEngineTargetDetails,
    required this.computeEngineVmDetails,
    required this.createTime,
    required this.endTime,
    required this.error,
    required this.name,
    required this.progress,
    required this.progressPercent,
    required this.state,
    required this.stateMessage,
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
    map['progress'] = progress;
    map['progressPercent'] = progressPercent;
    map['state'] = state;
    map['stateMessage'] = stateMessage;
    map['stateTime'] = stateTime;
    map['steps'] = Input.encodeList<CutoverStepResponse2, Map<String, dynamic>>(
        steps, (value) => value.toMap());
    map['targetDetails'] = targetDetails.toMap();
    return map;
  }

  factory CutoverJobResponse2.fromMap(Map<String, dynamic> map) {
    return CutoverJobResponse2(
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
      progress: map['progress'] as int,
      progressPercent: map['progressPercent'] as int,
      state: map['state'] as String,
      stateMessage: map['stateMessage'] as String,
      stateTime: map['stateTime'] as String,
      steps: Input.decodeList<CutoverStepResponse2>(
          map['steps'],
          (value) => CutoverStepResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      targetDetails: TargetVMDetailsResponse.fromMap(
          (map['targetDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
