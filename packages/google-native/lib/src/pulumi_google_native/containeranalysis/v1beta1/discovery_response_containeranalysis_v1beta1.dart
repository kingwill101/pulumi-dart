// ignore_for_file: unused_element, unnecessary_cast

/// A note that indicates a type of analysis a provider would perform. This note exists in a provider's project. A `Discovery` occurrence is created in a consumer's project at the start of analysis.
class DiscoveryResponseContaineranalysisV1beta1 {
  /// Immutable. The kind of analysis that is handled by this discovery.
  final String analysisKind;

  DiscoveryResponseContaineranalysisV1beta1({
    required this.analysisKind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analysisKind'] = analysisKind;
    return map;
  }

  factory DiscoveryResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return DiscoveryResponseContaineranalysisV1beta1(
      analysisKind: map['analysisKind'] as String,
    );
  }
}
