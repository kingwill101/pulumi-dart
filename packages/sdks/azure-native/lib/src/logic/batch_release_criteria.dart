// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_trigger_recurrence.dart';

/// The batch release criteria.
class BatchReleaseCriteria {
  /// The batch size in bytes.
  final pulumi.Input<int>? batchSize;
  /// The message count.
  final pulumi.Input<int>? messageCount;
  /// The recurrence.
  final pulumi.Input<WorkflowTriggerRecurrence>? recurrence;

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
      'recurrence': ?pulumi.Input.mapOptionalInputValue<WorkflowTriggerRecurrence, Map<String, dynamic>>(recurrence, (value) => value.toMap()),
    };
  }

  factory BatchReleaseCriteria.fromMap(Map<String, dynamic> map) {
    return BatchReleaseCriteria(
      batchSize: map['batchSize'] == null ? null : (map['batchSize']! as int).input(),
      messageCount: map['messageCount'] == null ? null : (map['messageCount']! as int).input(),
      recurrence: map['recurrence'] == null ? null : (WorkflowTriggerRecurrence.fromMap((map['recurrence']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

