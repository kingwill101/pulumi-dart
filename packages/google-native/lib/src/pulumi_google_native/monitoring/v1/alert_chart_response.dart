// ignore_for_file: unused_element, unnecessary_cast

/// A chart that displays alert policy data.
class AlertChartResponse {
  /// The resource name of the alert policy. The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY_ID]
  final String name;

  AlertChartResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory AlertChartResponse.fromMap(Map<String, dynamic> map) {
    return AlertChartResponse(
      name: map['name'] as String,
    );
  }
}
