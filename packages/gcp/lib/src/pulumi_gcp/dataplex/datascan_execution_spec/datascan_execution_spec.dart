// ignore_for_file: unused_element, unnecessary_cast

import '../datascan_execution_spec_trigger/datascan_execution_spec_trigger.dart';

class DatascanExecutionSpec {
  /// The unnested field (of type Date or Timestamp) that contains values which monotonically increase over time. If not specified, a data scan will run for all data in the table.
  final String? field;

  /// Spec related to how often and when a scan should be triggered.
  /// Structure is documented below.
  final DatascanExecutionSpecTrigger trigger;

  DatascanExecutionSpec({
    this.field,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldValue = field;
    if (fieldValue != null) {
      map['field'] = fieldValue;
    }
    map['trigger'] = trigger.toMap();
    return map;
  }

  factory DatascanExecutionSpec.fromMap(Map<String, dynamic> map) {
    return DatascanExecutionSpec(
      field: map['field'] == null ? null : map['field'] as String,
      trigger: DatascanExecutionSpecTrigger.fromMap(
          (map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}
