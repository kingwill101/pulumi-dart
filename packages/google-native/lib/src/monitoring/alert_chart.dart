// ignore_for_file: unused_element, unnecessary_cast

/// A chart that displays alert policy data.
class AlertChart {
  /// The resource name of the alert policy. The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY_ID]
  final String name;

  /// Creates a new [AlertChart].
  /// [name] The resource name of the alert policy. The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY_ID]
  AlertChart({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory AlertChart.fromMap(Map<String, dynamic> map) {
    return AlertChart(
      name: map['name'] as String,
    );
  }
}
