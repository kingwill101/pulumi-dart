// ignore_for_file: unused_element, unnecessary_cast

class NetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange {
  final int? from;
  final int? to;

  /// Creates a new [NetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange].
  /// [from] Optional.
  /// [to] Optional.
  NetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange({
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

  factory NetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange.fromMap(
      Map<String, dynamic> map) {
    return NetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange(
      from: map['from'] == null ? null : map['from'] as int,
      to: map['to'] == null ? null : map['to'] as int,
    );
  }
}
