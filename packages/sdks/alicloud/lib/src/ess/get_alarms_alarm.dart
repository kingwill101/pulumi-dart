// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlarmsAlarm {
  /// The list of actions to execute when this alarm transition into an ALARM state. Each action is specified as ess scaling rule ari.
  final pulumi.Input<List<String>> alarmActions;
  /// Defines the application group id defined by CMS which is assigned when you upload custom metric to CMS, only available for custom metirc.
  final pulumi.Input<int> cloudMonitorGroupId;
  /// The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand.
  final pulumi.Input<String> comparisonOperator;
  /// The description for the alarm.
  final pulumi.Input<String> description;
  /// The dimension map for the alarm's associated metric.
  final pulumi.Input<Map<String, String>> dimensions;
  /// Whether to enable specific ess alarm.
  final pulumi.Input<bool> enable;
  /// The number of times that needs to satisfies comparison condition before transition into ALARM state.
  final pulumi.Input<int> evaluationCount;
  /// The id of alarm.
  final pulumi.Input<String> id;
  /// The name for the alarm's associated metric.
  final pulumi.Input<String> metricName;
  /// The type for the alarm's associated metric. Supported value: system, custom. "system" means the metric data is collected by Aliyun Cloud Monitor Service(CMS), "custom" means the metric data is upload to CMS by users. Defaults to system.
  final pulumi.Input<String> metricType;
  /// The name for ess alarm.
  final pulumi.Input<String> name;
  /// The period in seconds over which the specified statistic is applied.
  final pulumi.Input<int> period;
  /// Scaling group id the alarms belong to.
  final pulumi.Input<String> scalingGroupId;
  /// The state of alarm task.
  final pulumi.Input<String> state;
  /// The statistic to apply to the alarm's associated metric.
  final pulumi.Input<String> statistics;
  /// The value against which the specified statistics is compared.
  final pulumi.Input<String> threshold;

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
  const GetAlarmsAlarm({
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
      alarmActions: pulumi.Input.fromValue((map['alarmActions'] as List).cast<String>()),
      cloudMonitorGroupId: pulumi.Input.fromValue(map['cloudMonitorGroupId'] as int),
      comparisonOperator: pulumi.Input.fromValue(map['comparisonOperator'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      dimensions: pulumi.Input.fromValue((map['dimensions'] as Map).cast<String, String>()),
      enable: pulumi.Input.fromValue(map['enable'] as bool),
      evaluationCount: pulumi.Input.fromValue(map['evaluationCount'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      metricType: pulumi.Input.fromValue(map['metricType'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      period: pulumi.Input.fromValue(map['period'] as int),
      scalingGroupId: pulumi.Input.fromValue(map['scalingGroupId'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      statistics: pulumi.Input.fromValue(map['statistics'] as String),
      threshold: pulumi.Input.fromValue(map['threshold'] as String),
    );
  }
}

