// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange {
  final int from;
  final int to;

  /// Creates a new [GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange].
  /// [from] Required.
  /// [to] Required.
  GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['from'] = from;
    map['to'] = to;
    return map;
  }

  factory GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange(
      from: map['from'] as int,
      to: map['to'] as int,
    );
  }
}
