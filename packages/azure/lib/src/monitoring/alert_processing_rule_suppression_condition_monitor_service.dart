// ignore_for_file: unused_element, unnecessary_cast


class AlertProcessingRuleSuppressionConditionMonitorService {
  /// The operator for a given condition. Possible values are `Equals` and `NotEquals`.
  final String operator;
  /// A list of values to match for a given condition. Possible values are `ActivityLog Administrative`, `ActivityLog Autoscale`, `ActivityLog Policy`, `ActivityLog Recommendation`, `ActivityLog Security`, `Application Insights`, `Azure Backup`, `Azure Stack Edge`, `Azure Stack Hub`, `Custom`, `Data Box Gateway`, `Health Platform`, `Log Alerts V2`, `Log Analytics`, `Platform`, `Prometheus`, `Resource Health`, `Smart Detector`, and `VM Insights - Health`.
  final List<String> values;

  /// Creates a new [AlertProcessingRuleSuppressionConditionMonitorService].
  /// [operator] The operator for a given condition. Possible values are `Equals` and `NotEquals`.
  /// [values] A list of values to match for a given condition. Possible values are `ActivityLog Administrative`, `ActivityLog Autoscale`, `ActivityLog Policy`, `ActivityLog Recommendation`, `ActivityLog Security`, `Application Insights`, `Azure Backup`, `Azure Stack Edge`, `Azure Stack Hub`, `Custom`, `Data Box Gateway`, `Health Platform`, `Log Alerts V2`, `Log Analytics`, `Platform`, `Prometheus`, `Resource Health`, `Smart Detector`, and `VM Insights - Health`.
  AlertProcessingRuleSuppressionConditionMonitorService({
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
    };
  }

  factory AlertProcessingRuleSuppressionConditionMonitorService.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleSuppressionConditionMonitorService(
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

