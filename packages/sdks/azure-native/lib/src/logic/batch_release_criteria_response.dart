// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_trigger_recurrence_response.dart';

/// The batch release criteria.
class BatchReleaseCriteriaResponse {
  /// The batch size in bytes.
  final pulumi.Input<int?>? batchSize;
  /// The message count.
  final pulumi.Input<int?>? messageCount;
  /// The recurrence.
  final pulumi.Input<WorkflowTriggerRecurrenceResponse?>? recurrence;

  /// Creates a new [BatchReleaseCriteriaResponse].
  /// [batchSize] The batch size in bytes.
  /// [messageCount] The message count.
  /// [recurrence] The recurrence.
  const BatchReleaseCriteriaResponse({
    this.batchSize,
    this.messageCount,
    this.recurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': ?batchSize,
      'messageCount': ?messageCount,
      'recurrence': ?pulumi.Input.mapOptionalInputValue<WorkflowTriggerRecurrenceResponse, Map<String, dynamic>>(recurrence, (value) => value.toMap()),
    };
  }

  factory BatchReleaseCriteriaResponse.fromMap(Map<String, dynamic> map) {
    return BatchReleaseCriteriaResponse(
      batchSize: (() { final guardedValue = map['batchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      messageCount: (() { final guardedValue = map['messageCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      recurrence: (() { final guardedValue = map['recurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTriggerRecurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
