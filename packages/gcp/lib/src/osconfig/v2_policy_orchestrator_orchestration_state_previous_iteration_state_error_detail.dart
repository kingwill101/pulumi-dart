// ignore_for_file: unused_element, unnecessary_cast

class V2PolicyOrchestratorOrchestrationStatePreviousIterationStateErrorDetail {
  /// A URL/resource name that uniquely identifies the type of the serialized protocol buffer message
  final String? typeUrl;

  /// (Optional)
  final String? value;

  /// Creates a new [V2PolicyOrchestratorOrchestrationStatePreviousIterationStateErrorDetail].
  /// [typeUrl] A URL/resource name that uniquely identifies the type of the serialized protocol buffer message
  /// [value] (Optional)
  V2PolicyOrchestratorOrchestrationStatePreviousIterationStateErrorDetail({
    this.typeUrl,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'typeUrl': ?typeUrl, 'value': ?value};
  }

  factory V2PolicyOrchestratorOrchestrationStatePreviousIterationStateErrorDetail.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2PolicyOrchestratorOrchestrationStatePreviousIterationStateErrorDetail(
      typeUrl: map['typeUrl'] == null ? null : map['typeUrl'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
