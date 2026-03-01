// ignore_for_file: unused_element, unnecessary_cast

import 'workflow_trigger_recurrence.dart';

/// The batch release criteria.
class BatchReleaseCriteria {
  /// The batch size in bytes.
  final int? batchSize;
  /// The message count.
  final int? messageCount;
  /// The recurrence.
  final WorkflowTriggerRecurrence? recurrence;

  /// Creates a new [BatchReleaseCriteria].
  /// [batchSize] The batch size in bytes.
  /// [messageCount] The message count.
  /// [recurrence] The recurrence.
  BatchReleaseCriteria({
    this.batchSize,
    this.messageCount,
    this.recurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': ?batchSize,
      'messageCount': ?messageCount,
      'recurrence': ?recurrence == null ? null : recurrence!.toMap(),
    };
  }

  factory BatchReleaseCriteria.fromMap(Map<String, dynamic> map) {
    return BatchReleaseCriteria(
      batchSize: map['batchSize'] == null ? null : map['batchSize'] as int,
      messageCount: map['messageCount'] == null ? null : map['messageCount'] as int,
      recurrence: map['recurrence'] == null ? null : WorkflowTriggerRecurrence.fromMap((map['recurrence'] as Map).cast<String, dynamic>()),
    );
  }
}

