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
  BatchReleaseCriteria({this.batchSize, this.messageCount, this.recurrence});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': ?batchSize,
      'messageCount': ?messageCount,
      'recurrence':
          ?pulumi.Input.mapOptionalInputValue<
            WorkflowTriggerRecurrence,
            Map<String, dynamic>
          >(recurrence, (value) => value.toMap()),
    };
  }

  factory BatchReleaseCriteria.fromMap(Map<String, dynamic> map) {
    return BatchReleaseCriteria(
      batchSize: (() {
        final guardedValue = map['batchSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      messageCount: (() {
        final guardedValue = map['messageCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      recurrence: (() {
        final guardedValue = map['recurrence'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkflowTriggerRecurrence.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
