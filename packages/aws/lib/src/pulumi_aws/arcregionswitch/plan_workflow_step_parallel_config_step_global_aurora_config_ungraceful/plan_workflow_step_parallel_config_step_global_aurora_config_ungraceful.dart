// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful {
  final String ungraceful;

  PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful({
    required this.ungraceful,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ungraceful'] = ungraceful;
    return map;
  }

  factory PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful(
      ungraceful: map['ungraceful'] as String,
    );
  }
}
