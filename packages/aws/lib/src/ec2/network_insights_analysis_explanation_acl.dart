// ignore_for_file: unused_element, unnecessary_cast

class NetworkInsightsAnalysisExplanationAcl {
  /// ARN of the Network Insights Analysis.
  final String? arn;

  /// ID of the Network Insights Analysis.
  final String? id;
  final String? name;

  /// Creates a new [NetworkInsightsAnalysisExplanationAcl].
  /// [arn] ARN of the Network Insights Analysis.
  /// [id] ID of the Network Insights Analysis.
  /// [name] Optional.
  NetworkInsightsAnalysisExplanationAcl({this.arn, this.id, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': ?arn, 'id': ?id, 'name': ?name};
  }

  factory NetworkInsightsAnalysisExplanationAcl.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInsightsAnalysisExplanationAcl(
      arn: map['arn'] == null ? null : map['arn'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
