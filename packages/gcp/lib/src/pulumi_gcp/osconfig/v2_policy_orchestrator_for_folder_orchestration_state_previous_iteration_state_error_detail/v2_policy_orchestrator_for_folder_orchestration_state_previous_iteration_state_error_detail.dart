// ignore_for_file: unused_element, unnecessary_cast

class V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationStateErrorDetail {
  /// (Output)
  /// A URL/resource name that uniquely identifies the type of the serialized protocol buffer message
  final String? typeUrl;

  /// (Output)
  final String? value;

  V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationStateErrorDetail({
    this.typeUrl,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeUrlValue = typeUrl;
    if (typeUrlValue != null) {
      map['typeUrl'] = typeUrlValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationStateErrorDetail.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationStateErrorDetail(
      typeUrl: map['typeUrl'] == null ? null : map['typeUrl'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
