// ignore_for_file: unused_element, unnecessary_cast


/// A chart that displays alert policy data.
class AlertChartResponse {
  /// The resource name of the alert policy. The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY_ID]
  final String name;

  /// Creates a new [AlertChartResponse].
  /// [name] The resource name of the alert policy. The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY_ID]
  AlertChartResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory AlertChartResponse.fromMap(Map<String, dynamic> map) {
    return AlertChartResponse(
      name: map['name'] as String,
    );
  }
}

