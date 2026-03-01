// ignore_for_file: unused_element, unnecessary_cast


class NetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange {
  final int? from;
  final int? to;

  /// Creates a new [NetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange].
  /// [from] Optional.
  /// [to] Optional.
  NetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?from,
      'to': ?to,
    };
  }

  factory NetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange(
      from: map['from'] == null ? null : map['from'] as int,
      to: map['to'] == null ? null : map['to'] as int,
    );
  }
}

