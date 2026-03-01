// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange {
  final int from;
  final int to;

  /// Creates a new [GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange].
  /// [from] Required.
  /// [to] Required.
  GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'from': from, 'to': to};
  }

  factory GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange(
      from: map['from'] as int,
      to: map['to'] as int,
    );
  }
}
