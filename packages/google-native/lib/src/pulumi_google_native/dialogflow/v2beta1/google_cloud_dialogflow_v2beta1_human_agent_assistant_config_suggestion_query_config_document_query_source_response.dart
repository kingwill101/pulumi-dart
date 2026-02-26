// ignore_for_file: unused_element, unnecessary_cast

/// Document source settings. Supported features: SMART_REPLY, SMART_COMPOSE.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySourceResponse {
  /// Knowledge documents to query from. Format: `projects//locations//knowledgeBases//documents/`. Currently, only one document is supported.
  final List<String> documents;

  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySourceResponse({
    required this.documents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['documents'] = documents;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySourceResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySourceResponse(
      documents: (map['documents'] as List).cast<String>(),
    );
  }
}
