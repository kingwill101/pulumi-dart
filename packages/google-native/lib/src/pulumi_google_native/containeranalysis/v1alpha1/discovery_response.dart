// ignore_for_file: unused_element, unnecessary_cast

/// A note that indicates a type of analysis a provider would perform. This note exists in a provider's project. A `Discovery` occurrence is created in a consumer's project at the start of analysis. The occurrence's operation will indicate the status of the analysis. Absence of an occurrence linked to this note for a resource indicates that analysis hasn't started.
class DiscoveryResponse {
  /// The kind of analysis that is handled by this discovery.
  final String analysisKind;

  DiscoveryResponse({
    required this.analysisKind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analysisKind'] = analysisKind;
    return map;
  }

  factory DiscoveryResponse.fromMap(Map<String, dynamic> map) {
    return DiscoveryResponse(
      analysisKind: map['analysisKind'] as String,
    );
  }
}
