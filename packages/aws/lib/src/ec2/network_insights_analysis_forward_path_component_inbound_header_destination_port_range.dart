// ignore_for_file: unused_element, unnecessary_cast

class NetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange {
  final int? from;
  final int? to;

  /// Creates a new [NetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange].
  /// [from] Optional.
  /// [to] Optional.
  NetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'from': ?from, 'to': ?to};
  }

  factory NetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange(
      from: map['from'] == null ? null : map['from'] as int,
      to: map['to'] == null ? null : map['to'] as int,
    );
  }
}
