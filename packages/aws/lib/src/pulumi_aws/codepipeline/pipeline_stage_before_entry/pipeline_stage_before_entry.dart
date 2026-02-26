// ignore_for_file: unused_element, unnecessary_cast

import '../pipeline_stage_before_entry_condition/pipeline_stage_before_entry_condition.dart';

class PipelineStageBeforeEntry {
  /// The conditions that are configured as entry condition. Defined as a <span pulumi-lang-nodejs="`condition`" pulumi-lang-dotnet="`Condition`" pulumi-lang-go="`condition`" pulumi-lang-python="`condition`" pulumi-lang-yaml="`condition`" pulumi-lang-java="`condition`">`condition`</span> block below.
  final PipelineStageBeforeEntryCondition condition;

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
