// ignore_for_file: unused_element, unnecessary_cast


class PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful {
  final String ungraceful;

  /// Creates a new [PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful].
  /// [ungraceful] Required.
  PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful({
    required this.ungraceful,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ungraceful': ungraceful,
    };
  }

  factory PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful(
      ungraceful: map['ungraceful'] as String,
    );
  }
}

