// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_base_alert_config_error_enum_list.dart';
import 'enterprise_crm_eventbus_proto_base_alert_config_threshold_value.dart';
import 'enterprise_crm_eventbus_proto_workflow_alert_config_metric_type.dart';
import 'enterprise_crm_eventbus_proto_workflow_alert_config_threshold_type.dart';

/// Message to be used to configure custom alerting in the {@code EventConfig} protos for an event.
class EnterpriseCrmEventbusProtoWorkflowAlertConfig {
  /// For an EXPECTED_MIN threshold, this aggregation_period must be lesser than 24 hours.
  final String? aggregationPeriod;

  /// Set to false by default. When set to true, the metrics are not aggregated or pushed to Monarch for this workflow alert.
  final bool? alertDisabled;

  /// A name to identify this alert. This will be displayed in the alert subject. If set, this name should be unique within the scope of the workflow.
  final String? alertName;

  /// Client associated with this alert configuration.
  final String? clientId;

  /// Should be specified only for *AVERAGE_DURATION and *PERCENTILE_DURATION metrics. This member should be used to specify what duration value the metrics should exceed for the alert to trigger.
  final String? durationThresholdMs;
  final EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList? errorEnumList;
  final EnterpriseCrmEventbusProtoWorkflowAlertConfigMetricType? metricType;

  /// For how many contiguous aggregation periods should the expected min or max be violated for the alert to be fired.
  final int? numAggregationPeriods;

  /// For either events or tasks, depending on the type of alert, count only final attempts, not retries.
  final bool? onlyFinalAttempt;

  /// Link to a playbook for resolving the issue that triggered this alert.
  final String? playbookUrl;

  /// The threshold type, whether lower(expected_min) or upper(expected_max), for which this alert is being configured. If value falls below expected_min or exceeds expected_max, an alert will be fired.
  final EnterpriseCrmEventbusProtoWorkflowAlertConfigThresholdType?
  thresholdType;

  /// The metric value, above or below which the alert should be triggered.
  final EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue? thresholdValue;
  final EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList? warningEnumList;

  /// Creates a new [EnterpriseCrmEventbusProtoWorkflowAlertConfig].
  /// [aggregationPeriod] For an EXPECTED_MIN threshold, this aggregation_period must be lesser than 24 hours.
  /// [alertDisabled] Set to false by default. When set to true, the metrics are not aggregated or pushed to Monarch for this workflow alert.
  /// [alertName] A name to identify this alert. This will be displayed in the alert subject. If set, this name should be unique within the scope of the workflow.
  /// [clientId] Client associated with this alert configuration.
  /// [durationThresholdMs] Should be specified only for *AVERAGE_DURATION and *PERCENTILE_DURATION metrics. This member should be used to specify what duration value the metrics should exceed for the alert to trigger.
  /// [errorEnumList] Optional.
  /// [metricType] Optional.
  /// [numAggregationPeriods] For how many contiguous aggregation periods should the expected min or max be violated for the alert to be fired.
  /// [onlyFinalAttempt] For either events or tasks, depending on the type of alert, count only final attempts, not retries.
  /// [playbookUrl] Link to a playbook for resolving the issue that triggered this alert.
  /// [thresholdType] The threshold type, whether lower(expected_min) or upper(expected_max), for which this alert is being configured. If value falls below expected_min or exceeds expected_max, an alert will be fired.
  /// [thresholdValue] The metric value, above or below which the alert should be triggered.
  /// [warningEnumList] Optional.
  EnterpriseCrmEventbusProtoWorkflowAlertConfig({
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
      'thresholdValue': ?thresholdValue == null
          ? null
          : thresholdValue!.toMap(),
      'warningEnumList': ?warningEnumList == null
          ? null
          : warningEnumList!.toMap(),
    };
  }

  factory EnterpriseCrmEventbusProtoWorkflowAlertConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoWorkflowAlertConfig(
      aggregationPeriod: map['aggregationPeriod'] == null
          ? null
          : map['aggregationPeriod'] as String,
      alertDisabled: map['alertDisabled'] == null
          ? null
          : map['alertDisabled'] as bool,
      alertName: map['alertName'] == null ? null : map['alertName'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      durationThresholdMs: map['durationThresholdMs'] == null
          ? null
          : map['durationThresholdMs'] as String,
      errorEnumList: map['errorEnumList'] == null
          ? null
          : EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList.fromMap(
              (map['errorEnumList'] as Map).cast<String, dynamic>(),
            ),
      metricType: map['metricType'] == null
          ? null
          : EnterpriseCrmEventbusProtoWorkflowAlertConfigMetricType.fromValue(
              map['metricType'] as String,
            ),
      numAggregationPeriods: map['numAggregationPeriods'] == null
          ? null
          : map['numAggregationPeriods'] as int,
      onlyFinalAttempt: map['onlyFinalAttempt'] == null
          ? null
          : map['onlyFinalAttempt'] as bool,
      playbookUrl: map['playbookUrl'] == null
          ? null
          : map['playbookUrl'] as String,
      thresholdType: map['thresholdType'] == null
          ? null
          : EnterpriseCrmEventbusProtoWorkflowAlertConfigThresholdType.fromValue(
              map['thresholdType'] as String,
            ),
      thresholdValue: map['thresholdValue'] == null
          ? null
          : EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue.fromMap(
              (map['thresholdValue'] as Map).cast<String, dynamic>(),
            ),
      warningEnumList: map['warningEnumList'] == null
          ? null
          : EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList.fromMap(
              (map['warningEnumList'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
