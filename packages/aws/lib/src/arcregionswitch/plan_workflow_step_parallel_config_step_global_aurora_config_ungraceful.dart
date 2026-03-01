// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful {
  final String ungraceful;

  /// Creates a new [PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful].
  /// [ungraceful] Required.
  PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful({
    required this.ungraceful,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ungraceful': ungraceful};
  }

  factory PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful.fromMap(
    Map<String, dynamic> map,
  ) {
    return PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful(
      ungraceful: map['ungraceful'] as String,
    );
  }
}
