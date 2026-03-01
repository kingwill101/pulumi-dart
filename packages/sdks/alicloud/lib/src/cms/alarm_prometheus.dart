// ignore_for_file: unused_element, unnecessary_cast


class AlarmPrometheus {
  /// The annotations of the Prometheus alert rule. When a Prometheus alert is triggered, the system renders the annotated keys and values to help you understand the metrics and alert rule.
  final Map<String, String>? annotations;
  /// The level of the alert. Valid values: `Critical`, `Warn`, `Info`.
  final String? level;
  /// The PromQL query statement. **Note:** The data obtained by using the PromQL query statement is the monitoring data. You must include the alert threshold in this statement.
  final String? promQl;
  /// The number of consecutive triggers. If the number of times that the metric values meet the trigger conditions reaches the value of this parameter, CloudMonitor sends alert notifications.
  final int? times;

  /// Creates a new [AlarmPrometheus].
  /// [annotations] The annotations of the Prometheus alert rule. When a Prometheus alert is triggered, the system renders the annotated keys and values to help you understand the metrics and alert rule.
  /// [level] The level of the alert. Valid values: `Critical`, `Warn`, `Info`.
  /// [promQl] The PromQL query statement. **Note:** The data obtained by using the PromQL query statement is the monitoring data. You must include the alert threshold in this statement.
  /// [times] The number of consecutive triggers. If the number of times that the metric values meet the trigger conditions reaches the value of this parameter, CloudMonitor sends alert notifications.
  AlarmPrometheus({
    this.annotations,
    this.level,
    this.promQl,
    this.times,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'level': ?level,
      'promQl': ?promQl,
      'times': ?times,
    };
  }

  factory AlarmPrometheus.fromMap(Map<String, dynamic> map) {
    return AlarmPrometheus(
      annotations: map['annotations'] == null ? null : (map['annotations'] as Map).cast<String, String>(),
      level: map['level'] == null ? null : map['level'] as String,
      promQl: map['promQl'] == null ? null : map['promQl'] as String,
      times: map['times'] == null ? null : map['times'] as int,
    );
  }
}

