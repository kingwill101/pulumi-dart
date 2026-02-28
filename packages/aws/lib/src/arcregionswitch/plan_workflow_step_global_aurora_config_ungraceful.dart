// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepGlobalAuroraConfigUngraceful {
  final String ungraceful;

  /// Creates a new [PlanWorkflowStepGlobalAuroraConfigUngraceful].
  /// [ungraceful] Required.
  PlanWorkflowStepGlobalAuroraConfigUngraceful({
    required this.ungraceful,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ungraceful'] = ungraceful;
    return map;
  }

  factory PlanWorkflowStepGlobalAuroraConfigUngraceful.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepGlobalAuroraConfigUngraceful(
      ungraceful: map['ungraceful'] as String,
    );
  }
}
