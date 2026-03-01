// ignore_for_file: unused_element, unnecessary_cast

class NetworkInsightsAnalysisExplanationPortRange {
  final int? from;
  final int? to;

  /// Creates a new [NetworkInsightsAnalysisExplanationPortRange].
  /// [from] Optional.
  /// [to] Optional.
  NetworkInsightsAnalysisExplanationPortRange({this.from, this.to});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'from': ?from, 'to': ?to};
  }

  factory NetworkInsightsAnalysisExplanationPortRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInsightsAnalysisExplanationPortRange(
      from: map['from'] == null ? null : map['from'] as int,
      to: map['to'] == null ? null : map['to'] as int,
    );
  }
}
