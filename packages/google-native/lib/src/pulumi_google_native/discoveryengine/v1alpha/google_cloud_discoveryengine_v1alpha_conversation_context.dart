// ignore_for_file: unused_element, unnecessary_cast

/// Defines context of the conversation
class GoogleCloudDiscoveryengineV1alphaConversationContext {
  /// The current active document the user opened. It contains the document resource reference.
  final String? activeDocument;

  /// The current list of documents the user is seeing. It contains the document resource references.
  final List<String>? contextDocuments;

  GoogleCloudDiscoveryengineV1alphaConversationContext({
    this.activeDocument,
    this.contextDocuments,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activeDocumentValue = activeDocument;
    if (activeDocumentValue != null) {
      map['activeDocument'] = activeDocumentValue;
    }
    final contextDocumentsValue = contextDocuments;
    if (contextDocumentsValue != null) {
      map['contextDocuments'] = contextDocumentsValue;
    }
    return map;
  }

  factory GoogleCloudDiscoveryengineV1alphaConversationContext.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaConversationContext(
      activeDocument: map['activeDocument'] == null
          ? null
          : map['activeDocument'] as String,
      contextDocuments: map['contextDocuments'] == null
          ? null
          : (map['contextDocuments'] as List).cast<String>(),
    );
  }
}
