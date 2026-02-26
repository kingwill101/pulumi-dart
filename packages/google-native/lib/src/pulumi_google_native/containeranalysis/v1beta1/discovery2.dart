// ignore_for_file: unused_element, unnecessary_cast

import 'discovery_analysis_kind2.dart';

/// A note that indicates a type of analysis a provider would perform. This note exists in a provider's project. A `Discovery` occurrence is created in a consumer's project at the start of analysis.
class Discovery2 {
  /// Immutable. The kind of analysis that is handled by this discovery.
  final DiscoveryAnalysisKind2 analysisKind;

  Discovery2({
    required this.analysisKind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analysisKind'] = analysisKind.value;
    return map;
  }

  factory Discovery2.fromMap(Map<String, dynamic> map) {
    return Discovery2(
      analysisKind:
          DiscoveryAnalysisKind2.fromValue(map['analysisKind'] as String),
    );
  }
}
