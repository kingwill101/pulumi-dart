// ignore_for_file: unused_element, unnecessary_cast

import 'replication_cycle_response_vmmigration_v1alpha1.dart';

/// CutoverStep holds information about the cutover step progress.
class CutoverStepResponseVmmigrationV1alpha1 {
  /// The time the step has ended.
  final String endTime;

  /// Final sync step.
  final ReplicationCycleResponseVmmigrationV1alpha1 finalSync;

  /// Instantiating migrated VM step.
  final Map<String, dynamic> instantiatingMigratedVm;

  /// Preparing VM disks step.
  final Map<String, dynamic> preparingVmDisks;

  /// A replication cycle prior cutover step.
  final ReplicationCycleResponseVmmigrationV1alpha1 previousReplicationCycle;

  /// Shutting down VM step.
  final Map<String, dynamic> shuttingDownSourceVm;

  /// The time the step has started.
  final String startTime;

  /// Creates a new [CutoverStepResponseVmmigrationV1alpha1].
  /// [endTime] The time the step has ended.
  /// [finalSync] Final sync step.
  /// [instantiatingMigratedVm] Instantiating migrated VM step.
  /// [preparingVmDisks] Preparing VM disks step.
  /// [previousReplicationCycle] A replication cycle prior cutover step.
  /// [shuttingDownSourceVm] Shutting down VM step.
  /// [startTime] The time the step has started.
  CutoverStepResponseVmmigrationV1alpha1({
    required this.endTime,
    required this.finalSync,
    required this.instantiatingMigratedVm,
    required this.preparingVmDisks,
    required this.previousReplicationCycle,
    required this.shuttingDownSourceVm,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'finalSync': finalSync.toMap(),
      'instantiatingMigratedVm': instantiatingMigratedVm,
      'preparingVmDisks': preparingVmDisks,
      'previousReplicationCycle': previousReplicationCycle.toMap(),
      'shuttingDownSourceVm': shuttingDownSourceVm,
      'startTime': startTime,
    };
  }

  factory CutoverStepResponseVmmigrationV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return CutoverStepResponseVmmigrationV1alpha1(
      endTime: map['endTime'] as String,
      finalSync: ReplicationCycleResponseVmmigrationV1alpha1.fromMap(
        (map['finalSync'] as Map).cast<String, dynamic>(),
      ),
      instantiatingMigratedVm: (map['instantiatingMigratedVm'] as Map)
          .cast<String, dynamic>(),
      preparingVmDisks: (map['preparingVmDisks'] as Map)
          .cast<String, dynamic>(),
      previousReplicationCycle:
          ReplicationCycleResponseVmmigrationV1alpha1.fromMap(
            (map['previousReplicationCycle'] as Map).cast<String, dynamic>(),
          ),
      shuttingDownSourceVm: (map['shuttingDownSourceVm'] as Map)
          .cast<String, dynamic>(),
      startTime: map['startTime'] as String,
    );
  }
}
