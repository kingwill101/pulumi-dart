// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepDocumentDbConfigUngraceful {
  final String ungraceful;

  /// Creates a new [PlanWorkflowStepDocumentDbConfigUngraceful].
  /// [ungraceful] Required.
  PlanWorkflowStepDocumentDbConfigUngraceful({
    required this.ungraceful,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ungraceful'] = ungraceful;
    return map;
  }

  factory PlanWorkflowStepDocumentDbConfigUngraceful.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepDocumentDbConfigUngraceful(
      ungraceful: map['ungraceful'] as String,
    );
  }
}
