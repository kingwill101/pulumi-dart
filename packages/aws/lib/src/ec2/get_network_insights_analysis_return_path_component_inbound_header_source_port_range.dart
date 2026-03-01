// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange {
  final int from;
  final int to;

  /// Creates a new [GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange].
  /// [from] Required.
  /// [to] Required.
  GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'from': from, 'to': to};
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange(
      from: map['from'] as int,
      to: map['to'] as int,
    );
  }
}
