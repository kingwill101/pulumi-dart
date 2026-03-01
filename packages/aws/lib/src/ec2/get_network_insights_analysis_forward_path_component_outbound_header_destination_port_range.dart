// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange {
  final int from;
  final int to;

  /// Creates a new [GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange].
  /// [from] Required.
  /// [to] Required.
  GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'from': from, 'to': to};
  }

  factory GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange(
      from: map['from'] as int,
      to: map['to'] as int,
    );
  }
}
