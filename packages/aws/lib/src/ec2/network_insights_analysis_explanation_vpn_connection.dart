// ignore_for_file: unused_element, unnecessary_cast

class NetworkInsightsAnalysisExplanationVpnConnection {
  /// ARN of the Network Insights Analysis.
  final String? arn;

  /// ID of the Network Insights Analysis.
  final String? id;
  final String? name;

  /// Creates a new [NetworkInsightsAnalysisExplanationVpnConnection].
  /// [arn] ARN of the Network Insights Analysis.
  /// [id] ID of the Network Insights Analysis.
  /// [name] Optional.
  NetworkInsightsAnalysisExplanationVpnConnection({
    this.arn,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory NetworkInsightsAnalysisExplanationVpnConnection.fromMap(
      Map<String, dynamic> map) {
    return NetworkInsightsAnalysisExplanationVpnConnection(
      arn: map['arn'] == null ? null : map['arn'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
