// ignore_for_file: unused_element, unnecessary_cast

class V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationStateErrorDetail {
  /// (Output)
  /// A URL/resource name that uniquely identifies the type of the serialized protocol buffer message
  final String? typeUrl;

  /// (Output)
  final String? value;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationStateErrorDetail].
  /// [typeUrl] (Output)
  /// [value] (Output)
  V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationStateErrorDetail({
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

  factory V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationStateErrorDetail.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationStateErrorDetail(
      typeUrl: map['typeUrl'] == null ? null : map['typeUrl'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
