// ignore_for_file: unused_element, unnecessary_cast


class GetAlarmsAlarm {
  /// The list of actions to execute when this alarm transition into an ALARM state. Each action is specified as ess scaling rule ari.
  final List<String> alarmActions;
  /// Defines the application group id defined by CMS which is assigned when you upload custom metric to CMS, only available for custom metirc.
  final int cloudMonitorGroupId;
  /// The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand.
  final String comparisonOperator;
  /// The description for the alarm.
  final String description;
  /// The dimension map for the alarm's associated metric.
  final Map<String, String> dimensions;
  /// Whether to enable specific ess alarm.
  final bool enable;
  /// The number of times that needs to satisfies comparison condition before transition into ALARM state.
  final int evaluationCount;
  /// The id of alarm.
  final String id;
  /// The name for the alarm's associated metric.
  final String metricName;
  /// The type for the alarm's associated metric. Supported value: system, custom. "system" means the metric data is collected by Aliyun Cloud Monitor Service(CMS), "custom" means the metric data is upload to CMS by users. Defaults to system.
  final String metricType;
  /// The name for ess alarm.
  final String name;
  /// The period in seconds over which the specified statistic is applied.
  final int period;
  /// Scaling group id the alarms belong to.
  final String scalingGroupId;
  /// The state of alarm task.
  final String state;
  /// The statistic to apply to the alarm's associated metric.
  final String statistics;
  /// The value against which the specified statistics is compared.
  final String threshold;

  /// Creates a new [GetAlarmsAlarm].
  /// [alarmActions] The list of actions to execute when this alarm transition into an ALARM state. Each action is specified as ess scaling rule ari.
  /// [cloudMonitorGroupId] Defines the application group id defined by CMS which is assigned when you upload custom metric to CMS, only available for custom metirc.
  /// [comparisonOperator] The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand.
  /// [description] The description for the alarm.
  /// [dimensions] The dimension map for the alarm's associated metric.
  /// [enable] Whether to enable specific ess alarm.
  /// [evaluationCount] The number of times that needs to satisfies comparison condition before transition into ALARM state.
  /// [id] The id of alarm.
  /// [metricName] The name for the alarm's associated metric.
  /// [metricType] The type for the alarm's associated metric. Supported value: system, custom. "system" means the metric data is collected by Aliyun Cloud Monitor Service(CMS), "custom" means the metric data is upload to CMS by users. Defaults to system.
  /// [name] The name for ess alarm.
  /// [period] The period in seconds over which the specified statistic is applied.
  /// [scalingGroupId] Scaling group id the alarms belong to.
  /// [state] The state of alarm task.
  /// [statistics] The statistic to apply to the alarm's associated metric.
  /// [threshold] The value against which the specified statistics is compared.
  GetAlarmsAlarm({
    required this.alarmActions,
    required this.cloudMonitorGroupId,
    required this.comparisonOperator,
    required this.description,
    required this.dimensions,
    required this.enable,
    required this.evaluationCount,
    required this.id,
    required this.metricName,
    required this.metricType,
    required this.name,
    required this.period,
    required this.scalingGroupId,
    required this.state,
    required this.statistics,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmActions': alarmActions,
      'cloudMonitorGroupId': cloudMonitorGroupId,
      'comparisonOperator': comparisonOperator,
      'description': description,
      'dimensions': dimensions,
      'enable': enable,
      'evaluationCount': evaluationCount,
      'id': id,
      'metricName': metricName,
      'metricType': metricType,
      'name': name,
      'period': period,
      'scalingGroupId': scalingGroupId,
      'state': state,
      'statistics': statistics,
      'threshold': threshold,
    };
  }

  factory GetAlarmsAlarm.fromMap(Map<String, dynamic> map) {
    return GetAlarmsAlarm(
      alarmActions: (map['alarmActions'] as List).cast<String>(),
      cloudMonitorGroupId: map['cloudMonitorGroupId'] as int,
      comparisonOperator: map['comparisonOperator'] as String,
      description: map['description'] as String,
      dimensions: (map['dimensions'] as Map).cast<String, String>(),
      enable: map['enable'] as bool,
      evaluationCount: map['evaluationCount'] as int,
      id: map['id'] as String,
      metricName: map['metricName'] as String,
      metricType: map['metricType'] as String,
      name: map['name'] as String,
      period: map['period'] as int,
      scalingGroupId: map['scalingGroupId'] as String,
      state: map['state'] as String,
      statistics: map['statistics'] as String,
      threshold: map['threshold'] as String,
    );
  }
}

