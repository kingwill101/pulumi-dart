// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepDocumentDbConfigUngraceful {
  final String ungraceful;

  /// Creates a new [PlanWorkflowStepDocumentDbConfigUngraceful].
  /// [ungraceful] Required.
  PlanWorkflowStepDocumentDbConfigUngraceful({required this.ungraceful});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ungraceful': ungraceful};
  }

  factory PlanWorkflowStepDocumentDbConfigUngraceful.fromMap(
    Map<String, dynamic> map,
  ) {
    return PlanWorkflowStepDocumentDbConfigUngraceful(
      ungraceful: map['ungraceful'] as String,
    );
  }
}
