// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_base_alert_config_error_enum_list.dart';
import 'enterprise_crm_eventbus_proto_base_alert_config_threshold_value.dart';
import 'enterprise_crm_eventbus_proto_task_alert_config_metric_type.dart';
import 'enterprise_crm_eventbus_proto_task_alert_config_threshold_type.dart';

/// Message to be used to configure alerting in the {@code TaskConfig} protos for tasks in an event.
class EnterpriseCrmEventbusProtoTaskAlertConfig {
  /// The period over which the metric value should be aggregated and evaluated. Format is , where integer should be a positive integer and unit should be one of (s,m,h,d,w) meaning (second, minute, hour, day, week).
  final String? aggregationPeriod;
  /// Set to false by default. When set to true, the metrics are not aggregated or pushed to Monarch for this workflow alert.
  final bool? alertDisabled;
  /// A name to identify this alert. This will be displayed in the alert subject. If set, this name should be unique in within the scope of the containing workflow.
  final String? alertName;
  /// Client associated with this alert configuration. Must be a client enabled in one of the containing workflow's triggers.
  final String? clientId;
  /// Should be specified only for TASK_AVERAGE_DURATION and TASK_PERCENTILE_DURATION metrics. This member should be used to specify what duration value the metrics should exceed for the alert to trigger.
  final String? durationThresholdMs;
  final EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList? errorEnumList;
  final EnterpriseCrmEventbusProtoTaskAlertConfigMetricType? metricType;
  /// For how many contiguous aggregation periods should the expected min or max be violated for the alert to be fired.
  final int? numAggregationPeriods;
  /// Only count final task attempts, not retries.
  final bool? onlyFinalAttempt;
  /// Link to a playbook for resolving the issue that triggered this alert.
  final String? playbookUrl;
  /// The threshold type for which this alert is being configured. If value falls below expected_min or exceeds expected_max, an alert will be fired.
  final EnterpriseCrmEventbusProtoTaskAlertConfigThresholdType? thresholdType;
  /// The metric value, above or below which the alert should be triggered.
  final EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue? thresholdValue;
  final EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList? warningEnumList;

  /// Creates a new [EnterpriseCrmEventbusProtoTaskAlertConfig].
  /// [aggregationPeriod] The period over which the metric value should be aggregated and evaluated. Format is , where integer should be a positive integer and unit should be one of (s,m,h,d,w) meaning (second, minute, hour, day, week).
  /// [alertDisabled] Set to false by default. When set to true, the metrics are not aggregated or pushed to Monarch for this workflow alert.
  /// [alertName] A name to identify this alert. This will be displayed in the alert subject. If set, this name should be unique in within the scope of the containing workflow.
  /// [clientId] Client associated with this alert configuration. Must be a client enabled in one of the containing workflow's triggers.
  /// [durationThresholdMs] Should be specified only for TASK_AVERAGE_DURATION and TASK_PERCENTILE_DURATION metrics. This member should be used to specify what duration value the metrics should exceed for the alert to trigger.
  /// [errorEnumList] Optional.
  /// [metricType] Optional.
  /// [numAggregationPeriods] For how many contiguous aggregation periods should the expected min or max be violated for the alert to be fired.
  /// [onlyFinalAttempt] Only count final task attempts, not retries.
  /// [playbookUrl] Link to a playbook for resolving the issue that triggered this alert.
  /// [thresholdType] The threshold type for which this alert is being configured. If value falls below expected_min or exceeds expected_max, an alert will be fired.
  /// [thresholdValue] The metric value, above or below which the alert should be triggered.
  /// [warningEnumList] Optional.
  EnterpriseCrmEventbusProtoTaskAlertConfig({
    this.aggregationPeriod,
    this.alertDisabled,
    this.alertName,
    this.clientId,
    this.durationThresholdMs,
    this.errorEnumList,
    this.metricType,
    this.numAggregationPeriods,
    this.onlyFinalAttempt,
    this.playbookUrl,
    this.thresholdType,
    this.thresholdValue,
    this.warningEnumList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationPeriod': ?aggregationPeriod,
      'alertDisabled': ?alertDisabled,
      'alertName': ?alertName,
      'clientId': ?clientId,
      'durationThresholdMs': ?durationThresholdMs,
      'errorEnumList': ?errorEnumList == null ? null : errorEnumList!.toMap(),
      'metricType': ?metricType == null ? null : metricType!.value,
      'numAggregationPeriods': ?numAggregationPeriods,
      'onlyFinalAttempt': ?onlyFinalAttempt,
      'playbookUrl': ?playbookUrl,
      'thresholdType': ?thresholdType == null ? null : thresholdType!.value,
      'thresholdValue': ?thresholdValue == null ? null : thresholdValue!.toMap(),
      'warningEnumList': ?warningEnumList == null ? null : warningEnumList!.toMap(),
    };
  }

  factory EnterpriseCrmEventbusProtoTaskAlertConfig.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoTaskAlertConfig(
      aggregationPeriod: map['aggregationPeriod'] == null ? null : map['aggregationPeriod'] as String,
      alertDisabled: map['alertDisabled'] == null ? null : map['alertDisabled'] as bool,
      alertName: map['alertName'] == null ? null : map['alertName'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      durationThresholdMs: map['durationThresholdMs'] == null ? null : map['durationThresholdMs'] as String,
      errorEnumList: map['errorEnumList'] == null ? null : EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList.fromMap((map['errorEnumList'] as Map).cast<String, dynamic>()),
      metricType: map['metricType'] == null ? null : EnterpriseCrmEventbusProtoTaskAlertConfigMetricType.fromValue(map['metricType'] as String),
      numAggregationPeriods: map['numAggregationPeriods'] == null ? null : map['numAggregationPeriods'] as int,
      onlyFinalAttempt: map['onlyFinalAttempt'] == null ? null : map['onlyFinalAttempt'] as bool,
      playbookUrl: map['playbookUrl'] == null ? null : map['playbookUrl'] as String,
      thresholdType: map['thresholdType'] == null ? null : EnterpriseCrmEventbusProtoTaskAlertConfigThresholdType.fromValue(map['thresholdType'] as String),
      thresholdValue: map['thresholdValue'] == null ? null : EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue.fromMap((map['thresholdValue'] as Map).cast<String, dynamic>()),
      warningEnumList: map['warningEnumList'] == null ? null : EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList.fromMap((map['warningEnumList'] as Map).cast<String, dynamic>()),
    );
  }
}

