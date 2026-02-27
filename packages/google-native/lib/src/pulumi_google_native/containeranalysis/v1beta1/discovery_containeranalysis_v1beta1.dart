// ignore_for_file: unused_element, unnecessary_cast

import 'discovery_analysis_kind_containeranalysis_v1beta1.dart';

/// A note that indicates a type of analysis a provider would perform. This note exists in a provider's project. A `Discovery` occurrence is created in a consumer's project at the start of analysis.
class DiscoveryContaineranalysisV1beta1 {
  /// Immutable. The kind of analysis that is handled by this discovery.
  final DiscoveryAnalysisKindContaineranalysisV1beta1 analysisKind;

  DiscoveryContaineranalysisV1beta1({
    required this.analysisKind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analysisKind'] = analysisKind.value;
    return map;
  }

  factory DiscoveryContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return DiscoveryContaineranalysisV1beta1(
      analysisKind: DiscoveryAnalysisKindContaineranalysisV1beta1.fromValue(
          map['analysisKind'] as String),
    );
  }
}
