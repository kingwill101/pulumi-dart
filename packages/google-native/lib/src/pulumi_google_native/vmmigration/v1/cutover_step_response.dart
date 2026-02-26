// ignore_for_file: unused_element, unnecessary_cast

import 'replication_cycle_response.dart';

/// CutoverStep holds information about the cutover step progress.
class CutoverStepResponse {
  /// The time the step has ended.
  final String endTime;

  /// Final sync step.
  final ReplicationCycleResponse finalSync;

  /// Instantiating migrated VM step.
  final Map<String, dynamic> instantiatingMigratedVm;

  /// Preparing VM disks step.
  final Map<String, dynamic> preparingVmDisks;

  /// A replication cycle prior cutover step.
  final ReplicationCycleResponse previousReplicationCycle;

  /// Shutting down VM step.
  final Map<String, dynamic> shuttingDownSourceVm;

  /// The time the step has started.
  final String startTime;

  CutoverStepResponse({
    required this.endTime,
    required this.finalSync,
    required this.instantiatingMigratedVm,
    required this.preparingVmDisks,
    required this.previousReplicationCycle,
    required this.shuttingDownSourceVm,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTime'] = endTime;
    map['finalSync'] = finalSync.toMap();
    map['instantiatingMigratedVm'] = instantiatingMigratedVm;
    map['preparingVmDisks'] = preparingVmDisks;
    map['previousReplicationCycle'] = previousReplicationCycle.toMap();
    map['shuttingDownSourceVm'] = shuttingDownSourceVm;
    map['startTime'] = startTime;
    return map;
  }

  factory CutoverStepResponse.fromMap(Map<String, dynamic> map) {
    return CutoverStepResponse(
      endTime: map['endTime'] as String,
      finalSync: ReplicationCycleResponse.fromMap(
          (map['finalSync'] as Map).cast<String, dynamic>()),
      instantiatingMigratedVm:
          (map['instantiatingMigratedVm'] as Map).cast<String, dynamic>(),
      preparingVmDisks:
          (map['preparingVmDisks'] as Map).cast<String, dynamic>(),
      previousReplicationCycle: ReplicationCycleResponse.fromMap(
          (map['previousReplicationCycle'] as Map).cast<String, dynamic>()),
      shuttingDownSourceVm:
          (map['shuttingDownSourceVm'] as Map).cast<String, dynamic>(),
      startTime: map['startTime'] as String,
    );
  }
}
