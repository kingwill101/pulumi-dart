// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange {
  final int from;
  final int to;

  /// Creates a new [GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange].
  /// [from] Required.
  /// [to] Required.
  GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['from'] = from;
    map['to'] = to;
    return map;
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange(
      from: map['from'] as int,
      to: map['to'] as int,
    );
  }
}
