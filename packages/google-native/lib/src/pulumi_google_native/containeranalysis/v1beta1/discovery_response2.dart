// ignore_for_file: unused_element, unnecessary_cast

/// A note that indicates a type of analysis a provider would perform. This note exists in a provider's project. A `Discovery` occurrence is created in a consumer's project at the start of analysis.
class DiscoveryResponse2 {
  /// Immutable. The kind of analysis that is handled by this discovery.
  final String analysisKind;

  DiscoveryResponse2({
    required this.analysisKind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analysisKind'] = analysisKind;
    return map;
  }

  factory DiscoveryResponse2.fromMap(Map<String, dynamic> map) {
    return DiscoveryResponse2(
      analysisKind: map['analysisKind'] as String,
    );
  }
}
