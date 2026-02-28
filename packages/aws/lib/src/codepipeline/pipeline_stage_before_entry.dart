// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_stage_before_entry_condition.dart';

class PipelineStageBeforeEntry {
  /// The conditions that are configured as entry condition. Defined as a `condition` block below.
  final PipelineStageBeforeEntryCondition condition;

  /// Creates a new [PipelineStageBeforeEntry].
  /// [condition] The conditions that are configured as entry condition. Defined as a `condition` block below.
  PipelineStageBeforeEntry({
    required this.condition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['condition'] = condition.toMap();
    return map;
  }

  factory PipelineStageBeforeEntry.fromMap(Map<String, dynamic> map) {
    return PipelineStageBeforeEntry(
      condition: PipelineStageBeforeEntryCondition.fromMap(
          (map['condition'] as Map).cast<String, dynamic>()),
    );
  }
}
