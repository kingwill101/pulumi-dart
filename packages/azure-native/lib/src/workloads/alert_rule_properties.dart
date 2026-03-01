// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_query_parameter.dart';

/// Describes the properties of an alert.
class AlertRuleProperties {
  /// Action Group resource Ids to invoke when the alert fires
  final List<String>? actionGroups;
  /// The alert query parameters.
  final List<AlertQueryParameter>? alertQueryParameters;
  /// The value that indicates whether the alert should be automatically resolved or not. The default is Disable.
  final String? autoMitigate;
  /// Evaluation of metric on a particular column.
  final String? dimension;
  /// How often the scheduled query rule is evaluated.
  final int? evaluationFrequency;
  /// The operator for failing periods.
  final String? failingPeriodsOperator;
  /// The number of failing periods to trigger an alert.
  final int? failingPeriodsToAlert;
  /// Mute actions for the chosen period of time after the alert is fired.
  final int? muteActionsDuration;
  /// Severity of the alert. Should be an integer between [0-4]. Value of 0 is severest.
  final int? severity;
  /// Indicates whether the alert is in an enabled state.
  final String? status;
  /// The threshold of the alert.
  final int? threshold;
  /// The threshold operator of the alert.
  final String? thresholdOperator;
  /// The period of time on which the Alert query will be executed.
  final int? windowSize;

  /// Creates a new [AlertRuleProperties].
  /// [actionGroups] Action Group resource Ids to invoke when the alert fires
  /// [alertQueryParameters] The alert query parameters.
  /// [autoMitigate] The value that indicates whether the alert should be automatically resolved or not. The default is Disable.
  /// [dimension] Evaluation of metric on a particular column.
  /// [evaluationFrequency] How often the scheduled query rule is evaluated.
  /// [failingPeriodsOperator] The operator for failing periods.
  /// [failingPeriodsToAlert] The number of failing periods to trigger an alert.
  /// [muteActionsDuration] Mute actions for the chosen period of time after the alert is fired.
  /// [severity] Severity of the alert. Should be an integer between [0-4]. Value of 0 is severest.
  /// [status] Indicates whether the alert is in an enabled state.
  /// [threshold] The threshold of the alert.
  /// [thresholdOperator] The threshold operator of the alert.
  /// [windowSize] The period of time on which the Alert query will be executed.
  AlertRuleProperties({
    this.actionGroups,
    this.alertQueryParameters,
    this.autoMitigate,
    this.dimension,
    this.evaluationFrequency,
    this.failingPeriodsOperator,
    this.failingPeriodsToAlert,
    this.muteActionsDuration,
    this.severity,
    this.status,
    this.threshold,
    this.thresholdOperator,
    this.windowSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroups': ?actionGroups,
      'alertQueryParameters': ?alertQueryParameters == null ? null : pulumi.Input.encodeList<AlertQueryParameter, Map<String, dynamic>>(alertQueryParameters!, (value) => value.toMap()),
      'autoMitigate': ?autoMitigate,
      'dimension': ?dimension,
      'evaluationFrequency': ?evaluationFrequency,
      'failingPeriodsOperator': ?failingPeriodsOperator,
      'failingPeriodsToAlert': ?failingPeriodsToAlert,
      'muteActionsDuration': ?muteActionsDuration,
      'severity': ?severity,
      'status': ?status,
      'threshold': ?threshold,
      'thresholdOperator': ?thresholdOperator,
      'windowSize': ?windowSize,
    };
  }

  factory AlertRuleProperties.fromMap(Map<String, dynamic> map) {
    return AlertRuleProperties(
      actionGroups: map['actionGroups'] == null ? null : (map['actionGroups'] as List).cast<String>(),
      alertQueryParameters: map['alertQueryParameters'] == null ? null : pulumi.Input.decodeList<AlertQueryParameter>(map['alertQueryParameters'], (value) => AlertQueryParameter.fromMap((value as Map).cast<String, dynamic>())),
      autoMitigate: map['autoMitigate'] == null ? null : map['autoMitigate'] as String,
      dimension: map['dimension'] == null ? null : map['dimension'] as String,
      evaluationFrequency: map['evaluationFrequency'] == null ? null : map['evaluationFrequency'] as int,
      failingPeriodsOperator: map['failingPeriodsOperator'] == null ? null : map['failingPeriodsOperator'] as String,
      failingPeriodsToAlert: map['failingPeriodsToAlert'] == null ? null : map['failingPeriodsToAlert'] as int,
      muteActionsDuration: map['muteActionsDuration'] == null ? null : map['muteActionsDuration'] as int,
      severity: map['severity'] == null ? null : map['severity'] as int,
      status: map['status'] == null ? null : map['status'] as String,
      threshold: map['threshold'] == null ? null : map['threshold'] as int,
      thresholdOperator: map['thresholdOperator'] == null ? null : map['thresholdOperator'] as String,
      windowSize: map['windowSize'] == null ? null : map['windowSize'] as int,
    );
  }
}

