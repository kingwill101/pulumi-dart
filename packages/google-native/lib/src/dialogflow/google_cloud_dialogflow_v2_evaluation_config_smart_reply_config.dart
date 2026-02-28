// ignore_for_file: unused_element, unnecessary_cast

/// Smart reply specific configuration for evaluation job.
class GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfig {
  /// The allowlist document resource name. Format: `projects//knowledgeBases//documents/`. Only used for smart reply model.
  final String? allowlistDocument;

  /// The model to be evaluated can return multiple results with confidence score on each query. These results will be sorted by the descending order of the scores and we only keep the first max_result_count results as the final results to evaluate.
  final int maxResultCount;

  /// Creates a new [GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfig].
  /// [allowlistDocument] The allowlist document resource name. Format: `projects//knowledgeBases//documents/`. Only used for smart reply model.
  /// [maxResultCount] The model to be evaluated can return multiple results with confidence score on each query. These results will be sorted by the descending order of the scores and we only keep the first max_result_count results as the final results to evaluate.
  GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfig({
    this.allowlistDocument,
    required this.maxResultCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowlistDocumentValue = allowlistDocument;
    if (allowlistDocumentValue != null) {
      map['allowlistDocument'] = allowlistDocumentValue;
    }
    map['maxResultCount'] = maxResultCount;
    return map;
  }

  factory GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfig(
      allowlistDocument: map['allowlistDocument'] == null
          ? null
          : map['allowlistDocument'] as String,
      maxResultCount: map['maxResultCount'] as int,
    );
  }
}
