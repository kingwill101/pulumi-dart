// ignore_for_file: unused_element, unnecessary_cast

/// A note that indicates a type of analysis a provider would perform. This note exists in a provider's project. A `Discovery` occurrence is created in a consumer's project at the start of analysis.
class DiscoveryNoteResponse {
  /// Immutable. The kind of analysis that is handled by this discovery.
  final String analysisKind;

  /// Creates a new [DiscoveryNoteResponse].
  /// [analysisKind] Immutable. The kind of analysis that is handled by this discovery.
  DiscoveryNoteResponse({required this.analysisKind});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'analysisKind': analysisKind};
  }

  factory DiscoveryNoteResponse.fromMap(Map<String, dynamic> map) {
    return DiscoveryNoteResponse(analysisKind: map['analysisKind'] as String);
  }
}
