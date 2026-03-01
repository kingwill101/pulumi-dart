// ignore_for_file: unused_element, unnecessary_cast

/// Defines context of the conversation
class GoogleCloudDiscoveryengineV1alphaConversationContext {
  /// The current active document the user opened. It contains the document resource reference.
  final String? activeDocument;

  /// The current list of documents the user is seeing. It contains the document resource references.
  final List<String>? contextDocuments;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaConversationContext].
  /// [activeDocument] The current active document the user opened. It contains the document resource reference.
  /// [contextDocuments] The current list of documents the user is seeing. It contains the document resource references.
  GoogleCloudDiscoveryengineV1alphaConversationContext({
    this.activeDocument,
    this.contextDocuments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDocument': ?activeDocument,
      'contextDocuments': ?contextDocuments,
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaConversationContext.fromMap(
    Map<String, dynamic> map,
  ) {
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
