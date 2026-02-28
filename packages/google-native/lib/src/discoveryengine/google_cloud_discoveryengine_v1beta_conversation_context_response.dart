// ignore_for_file: unused_element, unnecessary_cast

/// Defines context of the conversation
class GoogleCloudDiscoveryengineV1betaConversationContextResponse {
  /// The current active document the user opened. It contains the document resource reference.
  final String activeDocument;

  /// The current list of documents the user is seeing. It contains the document resource references.
  final List<String> contextDocuments;

  /// Creates a new [GoogleCloudDiscoveryengineV1betaConversationContextResponse].
  /// [activeDocument] The current active document the user opened. It contains the document resource reference.
  /// [contextDocuments] The current list of documents the user is seeing. It contains the document resource references.
  GoogleCloudDiscoveryengineV1betaConversationContextResponse({
    required this.activeDocument,
    required this.contextDocuments,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['activeDocument'] = activeDocument;
    map['contextDocuments'] = contextDocuments;
    return map;
  }

  factory GoogleCloudDiscoveryengineV1betaConversationContextResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1betaConversationContextResponse(
      activeDocument: map['activeDocument'] as String,
      contextDocuments: (map['contextDocuments'] as List).cast<String>(),
    );
  }
}
