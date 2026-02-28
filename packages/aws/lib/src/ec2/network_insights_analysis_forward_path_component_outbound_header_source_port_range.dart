// ignore_for_file: unused_element, unnecessary_cast

class NetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange {
  final int? from;
  final int? to;

  /// Creates a new [NetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange].
  /// [from] Optional.
  /// [to] Optional.
  NetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fromValue = from;
    if (fromValue != null) {
      map['from'] = fromValue;
    }
    final toValue = to;
    if (toValue != null) {
      map['to'] = toValue;
    }
    return map;
  }

  factory NetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange.fromMap(
      Map<String, dynamic> map) {
    return NetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange(
      from: map['from'] == null ? null : map['from'] as int,
      to: map['to'] == null ? null : map['to'] as int,
    );
  }
}
