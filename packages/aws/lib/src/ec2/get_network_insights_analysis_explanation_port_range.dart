// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkInsightsAnalysisExplanationPortRange {
  final int from;
  final int to;

  /// Creates a new [GetNetworkInsightsAnalysisExplanationPortRange].
  /// [from] Required.
  /// [to] Required.
  GetNetworkInsightsAnalysisExplanationPortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
    };
  }

  factory GetNetworkInsightsAnalysisExplanationPortRange.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisExplanationPortRange(
      from: map['from'] as int,
      to: map['to'] as int,
    );
  }
}

