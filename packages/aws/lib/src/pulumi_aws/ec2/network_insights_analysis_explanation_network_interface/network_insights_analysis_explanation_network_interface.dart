// ignore_for_file: unused_element, unnecessary_cast

class NetworkInsightsAnalysisExplanationNetworkInterface {
  /// ARN of the Network Insights Analysis.
  final String? arn;

  /// ID of the Network Insights Analysis.
  final String? id;
  final String? name;

  NetworkInsightsAnalysisExplanationNetworkInterface({
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

  factory NetworkInsightsAnalysisExplanationNetworkInterface.fromMap(
      Map<String, dynamic> map) {
    return NetworkInsightsAnalysisExplanationNetworkInterface(
      arn: map['arn'] == null ? null : map['arn'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
