// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange {
  final int from;
  final int to;

  /// Creates a new [GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange].
  /// [from] Required.
  /// [to] Required.
  GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'from': from, 'to': to};
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange(
      from: map['from'] as int,
      to: map['to'] as int,
    );
  }
}
