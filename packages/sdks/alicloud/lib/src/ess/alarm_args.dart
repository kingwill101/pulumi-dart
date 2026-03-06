// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alarm_expression.dart';

/// {@template pulumi_ess_alarm_alarm_args_doc}
/// The set of arguments for Alarm.
/// {@endtemplate}
/// {@macro pulumi_ess_alarm_alarm_args_doc}
class AlarmArgs {
  /// The list of actions to execute when this alarm transition into an ALARM state. Each action is specified as ess scaling rule ari.
  final pulumi.Input<List<String>> alarmActions;
  /// Defines the application group id defined by CMS which is assigned when you upload custom metric to CMS, only available for custom metirc.
  final pulumi.Input<int>? cloudMonitorGroupId;
  /// The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand. Supported value: &gt;=, &lt;=, &gt;, &lt;. Defaults to &gt;=.
  final pulumi.Input<String>? comparisonOperator;
  /// The description for the alarm.
  final pulumi.Input<String>? description;
  /// The dimension map for the alarm's associated metric. For all metrics, you can not set the dimension key as "scaling_group" or "userId", which is set by default, the second dimension for metric, such as "device" for "PackagesNetIn", need to be set by users. See `dimensions` below.
  final pulumi.Input<Map<String, String>>? dimensions;
  /// The effective period of the event-triggered task. By default, the event-triggered task is in effect at all times.
  final pulumi.Input<String>? effective;
  /// Whether to enable specific ess alarm. Default to true.
  final pulumi.Input<bool>? enable;
  /// The number of times that needs to satisfies comparison condition before transition into ALARM state. Defaults to 3.
  final pulumi.Input<int>? evaluationCount;
  /// Support multi alert rule. See `expressions` below for details.
  final pulumi.Input<List<AlarmExpression>>? expressions;
  /// The relationship between the trigger conditions in the multi-metric alert rule.
  final pulumi.Input<String>? expressionsLogicOperator;
  /// The name for the alarm's associated metric. See `dimensions` below for details.
  final pulumi.Input<String>? metricName;
  /// The type for the alarm's associated metric. Supported value: system, custom. "system" means the metric data is collected by Aliyun Cloud Monitor Service(CMS), "custom" means the metric data is upload to CMS by users. Defaults to system.
  final pulumi.Input<String>? metricType;
  /// The name for ess alarm.
  final pulumi.Input<String>? name;
  /// The period in seconds over which the specified statistic is applied. Supported value: 60, 120, 300, 900. Defaults to 300.
  final pulumi.Input<int>? period;
  /// The scaling group associated with this alarm, the 'ForceNew' attribute is available in 1.56.0+.
  final pulumi.Input<String> scalingGroupId;
  /// The statistic to apply to the alarm's associated metric. Supported value: Average, Minimum, Maximum. Defaults to Average.
  final pulumi.Input<String>? statistics;
  /// The value against which the specified statistics is compared.
  final pulumi.Input<String>? threshold;

  /// Creates a new [AlarmArgs].
  /// [alarmActions] The list of actions to execute when this alarm transition into an ALARM state. Each action is specified as ess scaling rule ari.
  /// [cloudMonitorGroupId] Defines the application group id defined by CMS which is assigned when you upload custom metric to CMS, only available for custom metirc.
  /// [comparisonOperator] The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand. Supported value: &gt;=, &lt;=, &gt;, &lt;. Defaults to &gt;=.
  /// [description] The description for the alarm.
  /// [dimensions] The dimension map for the alarm's associated metric. For all metrics, you can not set the dimension key as "scaling_group" or "userId", which is set by default, the second dimension for metric, such as "device" for "PackagesNetIn", need to be set by users. See `dimensions` below.
  /// [effective] The effective period of the event-triggered task. By default, the event-triggered task is in effect at all times.
  /// [enable] Whether to enable specific ess alarm. Default to true.
  /// [evaluationCount] The number of times that needs to satisfies comparison condition before transition into ALARM state. Defaults to 3.
  /// [expressions] Support multi alert rule. See `expressions` below for details.
  /// [expressionsLogicOperator] The relationship between the trigger conditions in the multi-metric alert rule.
  /// [metricName] The name for the alarm's associated metric. See `dimensions` below for details.
  /// [metricType] The type for the alarm's associated metric. Supported value: system, custom. "system" means the metric data is collected by Aliyun Cloud Monitor Service(CMS), "custom" means the metric data is upload to CMS by users. Defaults to system.
  /// [name] The name for ess alarm.
  /// [period] The period in seconds over which the specified statistic is applied. Supported value: 60, 120, 300, 900. Defaults to 300.
  /// [scalingGroupId] The scaling group associated with this alarm, the 'ForceNew' attribute is available in 1.56.0+.
  /// [statistics] The statistic to apply to the alarm's associated metric. Supported value: Average, Minimum, Maximum. Defaults to Average.
  /// [threshold] The value against which the specified statistics is compared.
  const AlarmArgs({
    required this.alarmActions,
    this.cloudMonitorGroupId,
    this.comparisonOperator,
    this.description,
    this.dimensions,
    this.effective,
    this.enable,
    this.evaluationCount,
    this.expressions,
    this.expressionsLogicOperator,
    this.metricName,
    this.metricType,
    this.name,
    this.period,
    required this.scalingGroupId,
    this.statistics,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmActions': alarmActions,
      'cloudMonitorGroupId': ?cloudMonitorGroupId,
      'comparisonOperator': ?comparisonOperator,
      'description': ?description,
      'dimensions': ?dimensions,
      'effective': ?effective,
      'enable': ?enable,
      'evaluationCount': ?evaluationCount,
      'expressions': ?pulumi.Input.mapOptionalInputValue<List<AlarmExpression>, List<Map<String, dynamic>>>(expressions, (value) => pulumi.Input.encodeList<AlarmExpression, Map<String, dynamic>>(value, (value) => value.toMap())),
      'expressionsLogicOperator': ?expressionsLogicOperator,
      'metricName': ?metricName,
      'metricType': ?metricType,
      'name': ?name,
      'period': ?period,
      'scalingGroupId': scalingGroupId,
      'statistics': ?statistics,
      'threshold': ?threshold,
    };
  }

  factory AlarmArgs.fromMap(Map<String, dynamic> map) {
    return AlarmArgs(
      alarmActions: pulumi.Input.fromValue((map['alarmActions'] as List).cast<String>()),
      cloudMonitorGroupId: (() { final guardedValue = map['cloudMonitorGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      comparisonOperator: (() { final guardedValue = map['comparisonOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effective: (() { final guardedValue = map['effective']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      evaluationCount: (() { final guardedValue = map['evaluationCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      expressions: (() { final guardedValue = map['expressions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlarmExpression>(guardedValue, (value) => AlarmExpression.fromMap((value as Map).cast<String, dynamic>()))); })(),
      expressionsLogicOperator: (() { final guardedValue = map['expressionsLogicOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricName: (() { final guardedValue = map['metricName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricType: (() { final guardedValue = map['metricType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scalingGroupId: pulumi.Input.fromValue(map['scalingGroupId'] as String),
      statistics: (() { final guardedValue = map['statistics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threshold: (() { final guardedValue = map['threshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

