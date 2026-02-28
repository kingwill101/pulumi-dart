// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange {
  final int from;
  final int to;

  /// Creates a new [GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange].
  /// [from] Required.
  /// [to] Required.
  GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['from'] = from;
    map['to'] = to;
    return map;
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange(
      from: map['from'] as int,
      to: map['to'] as int,
    );
  }
}
