// ignore_for_file: unused_element, unnecessary_cast

import 'replicating_step_response_vmmigration_v1alpha1.dart';

/// CycleStep holds information about a step progress.
class CycleStepResponseVmmigrationV1alpha1 {
  /// The time the cycle step has ended.
  final String endTime;

  /// Initializing replication step.
  final Map<String, dynamic> initializingReplication;

  /// Post processing step.
  final Map<String, dynamic> postProcessing;

  /// Replicating step.
  final ReplicatingStepResponseVmmigrationV1alpha1 replicating;

  /// The time the cycle step has started.
  final String startTime;

  /// Creates a new [CycleStepResponseVmmigrationV1alpha1].
  /// [endTime] The time the cycle step has ended.
  /// [initializingReplication] Initializing replication step.
  /// [postProcessing] Post processing step.
  /// [replicating] Replicating step.
  /// [startTime] The time the cycle step has started.
  CycleStepResponseVmmigrationV1alpha1({
    required this.endTime,
    required this.initializingReplication,
    required this.postProcessing,
    required this.replicating,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'initializingReplication': initializingReplication,
      'postProcessing': postProcessing,
      'replicating': replicating.toMap(),
      'startTime': startTime,
    };
  }

  factory CycleStepResponseVmmigrationV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return CycleStepResponseVmmigrationV1alpha1(
      endTime: map['endTime'] as String,
      initializingReplication: (map['initializingReplication'] as Map)
          .cast<String, dynamic>(),
      postProcessing: (map['postProcessing'] as Map).cast<String, dynamic>(),
      replicating: ReplicatingStepResponseVmmigrationV1alpha1.fromMap(
        (map['replicating'] as Map).cast<String, dynamic>(),
      ),
      startTime: map['startTime'] as String,
    );
  }
}
