// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful {
  final String ungraceful;

  /// Creates a new [PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful].
  /// [ungraceful] Required.
  PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful({
    required this.ungraceful,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ungraceful'] = ungraceful;
    return map;
  }

  factory PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful(
      ungraceful: map['ungraceful'] as String,
    );
  }
}
