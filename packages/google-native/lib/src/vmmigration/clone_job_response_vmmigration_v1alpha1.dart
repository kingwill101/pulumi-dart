// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'clone_step_response_vmmigration_v1alpha1.dart';
import 'compute_engine_disks_target_details_response_vmmigration_v1alpha1.dart';
import 'compute_engine_target_details_response_vmmigration_v1alpha1.dart';
import 'status_response_vmmigration_v1alpha1.dart';
import 'target_vmdetails_response.dart';

/// CloneJob describes the process of creating a clone of a MigratingVM to the requested target based on the latest successful uploaded snapshots. While the migration cycles of a MigratingVm take place, it is possible to verify the uploaded VM can be started in the cloud, by creating a clone. The clone can be created without any downtime, and it is created using the latest snapshots which are already in the cloud. The cloneJob is only responsible for its work, not its products, which means once it is finished, it will never touch the instance it created. It will only delete it in case of the CloneJob being cancelled or upon failure to clone.
class CloneJobResponseVmmigrationV1alpha1 {
  /// Details of the target Persistent Disks in Compute Engine.
  final ComputeEngineDisksTargetDetailsResponseVmmigrationV1alpha1
  computeEngineDisksTargetDetails;

  /// Details of the target VM in Compute Engine.
  final ComputeEngineTargetDetailsResponseVmmigrationV1alpha1
  computeEngineTargetDetails;

  /// Details of the VM in Compute Engine. Deprecated: Use compute_engine_target_details instead.
  final TargetVMDetailsResponse computeEngineVmDetails;

  /// The time the clone job was created (as an API call, not when it was actually created in the target).
  final String createTime;

  /// The time the clone job was ended.
  final String endTime;

  /// Provides details for the errors that led to the Clone Job's state.
  final StatusResponseVmmigrationV1alpha1 error;

  /// The name of the clone.
  final String name;

  /// State of the clone job.
  final String state;

  /// The time the state was last updated.
  final String stateTime;

  /// The clone steps list representing its progress.
  final List<CloneStepResponseVmmigrationV1alpha1> steps;

  /// Details of the VM to create as the target of this clone job. Deprecated: Use compute_engine_target_details instead.
  final TargetVMDetailsResponse targetDetails;

  /// Creates a new [CloneJobResponseVmmigrationV1alpha1].
  /// [computeEngineDisksTargetDetails] Details of the target Persistent Disks in Compute Engine.
  /// [computeEngineTargetDetails] Details of the target VM in Compute Engine.
  /// [computeEngineVmDetails] Details of the VM in Compute Engine. Deprecated: Use compute_engine_target_details instead.
  /// [createTime] The time the clone job was created (as an API call, not when it was actually created in the target).
  /// [endTime] The time the clone job was ended.
  /// [error] Provides details for the errors that led to the Clone Job's state.
  /// [name] The name of the clone.
  /// [state] State of the clone job.
  /// [stateTime] The time the state was last updated.
  /// [steps] The clone steps list representing its progress.
  /// [targetDetails] Details of the VM to create as the target of this clone job. Deprecated: Use compute_engine_target_details instead.
  CloneJobResponseVmmigrationV1alpha1({
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
    return <String, dynamic>{
      'computeEngineDisksTargetDetails': computeEngineDisksTargetDetails
          .toMap(),
      'computeEngineTargetDetails': computeEngineTargetDetails.toMap(),
      'computeEngineVmDetails': computeEngineVmDetails.toMap(),
      'createTime': createTime,
      'endTime': endTime,
      'error': error.toMap(),
      'name': name,
      'state': state,
      'stateTime': stateTime,
      'steps':
          pulumi.Input.encodeList<
            CloneStepResponseVmmigrationV1alpha1,
            Map<String, dynamic>
          >(steps, (value) => value.toMap()),
      'targetDetails': targetDetails.toMap(),
    };
  }

  factory CloneJobResponseVmmigrationV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloneJobResponseVmmigrationV1alpha1(
      computeEngineDisksTargetDetails:
          ComputeEngineDisksTargetDetailsResponseVmmigrationV1alpha1.fromMap(
            (map['computeEngineDisksTargetDetails'] as Map)
                .cast<String, dynamic>(),
          ),
      computeEngineTargetDetails:
          ComputeEngineTargetDetailsResponseVmmigrationV1alpha1.fromMap(
            (map['computeEngineTargetDetails'] as Map).cast<String, dynamic>(),
          ),
      computeEngineVmDetails: TargetVMDetailsResponse.fromMap(
        (map['computeEngineVmDetails'] as Map).cast<String, dynamic>(),
      ),
      createTime: map['createTime'] as String,
      endTime: map['endTime'] as String,
      error: StatusResponseVmmigrationV1alpha1.fromMap(
        (map['error'] as Map).cast<String, dynamic>(),
      ),
      name: map['name'] as String,
      state: map['state'] as String,
      stateTime: map['stateTime'] as String,
      steps: pulumi.Input.decodeList<CloneStepResponseVmmigrationV1alpha1>(
        map['steps'],
        (value) => CloneStepResponseVmmigrationV1alpha1.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      targetDetails: TargetVMDetailsResponse.fromMap(
        (map['targetDetails'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
