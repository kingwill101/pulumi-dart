// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'enterprise_crm_eventbus_proto_combined_condition.dart';

/// The task that is next in line to be executed, if the condition specified evaluated to true.
class EnterpriseCrmEventbusProtoNextTask {
  /// Combined condition for this task to become an eligible next task. Each of these combined_conditions are joined with logical OR. DEPRECATED: use `condition`
  final List<EnterpriseCrmEventbusProtoCombinedCondition>? combinedConditions;

  /// Standard filter expression for this task to become an eligible next task.
  final String? condition;

  /// User-provided description intended to give more business context about the next task edge or condition.
  final String? description;

  /// User-provided label that is attached to this edge in the UI.
  final String? label;

  /// ID of the next task.
  final String? taskConfigId;

  /// Task number of the next task.
  final String? taskNumber;

  EnterpriseCrmEventbusProtoNextTask({
    this.combinedConditions,
    this.condition,
    this.description,
    this.label,
    this.taskConfigId,
    this.taskNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final combinedConditionsValue = combinedConditions;
    if (combinedConditionsValue != null) {
      map['combinedConditions'] = Input.encodeList<
              EnterpriseCrmEventbusProtoCombinedCondition,
              Map<String, dynamic>>(
          combinedConditionsValue, (value) => value.toMap());
    }
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = conditionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelValue = label;
    if (labelValue != null) {
      map['label'] = labelValue;
    }
    final taskConfigIdValue = taskConfigId;
    if (taskConfigIdValue != null) {
      map['taskConfigId'] = taskConfigIdValue;
    }
    final taskNumberValue = taskNumber;
    if (taskNumberValue != null) {
      map['taskNumber'] = taskNumberValue;
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoNextTask.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoNextTask(
      combinedConditions: map['combinedConditions'] == null
          ? null
          : Input.decodeList<EnterpriseCrmEventbusProtoCombinedCondition>(
              map['combinedConditions'],
              (value) => EnterpriseCrmEventbusProtoCombinedCondition.fromMap(
                  (value as Map).cast<String, dynamic>())),
      condition: map['condition'] == null ? null : map['condition'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      taskConfigId:
          map['taskConfigId'] == null ? null : map['taskConfigId'] as String,
      taskNumber:
          map['taskNumber'] == null ? null : map['taskNumber'] as String,
    );
  }
}
