// ignore_for_file: unused_element, unnecessary_cast

import 'replicating_step_response2.dart';

/// CycleStep holds information about a step progress.
class CycleStepResponse2 {
  /// The time the cycle step has ended.
  final String endTime;

  /// Initializing replication step.
  final Map<String, dynamic> initializingReplication;

  /// Post processing step.
  final Map<String, dynamic> postProcessing;

  /// Replicating step.
  final ReplicatingStepResponse2 replicating;

  /// The time the cycle step has started.
  final String startTime;

  CycleStepResponse2({
    required this.endTime,
    required this.initializingReplication,
    required this.postProcessing,
    required this.replicating,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTime'] = endTime;
    map['initializingReplication'] = initializingReplication;
    map['postProcessing'] = postProcessing;
    map['replicating'] = replicating.toMap();
    map['startTime'] = startTime;
    return map;
  }

  factory CycleStepResponse2.fromMap(Map<String, dynamic> map) {
    return CycleStepResponse2(
      endTime: map['endTime'] as String,
      initializingReplication:
          (map['initializingReplication'] as Map).cast<String, dynamic>(),
      postProcessing: (map['postProcessing'] as Map).cast<String, dynamic>(),
      replicating: ReplicatingStepResponse2.fromMap(
          (map['replicating'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
    );
  }
}
