// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_rule_black_list_metric.dart';

/// Input properties used for looking up and filtering MetricRuleBlackList resources.
class MetricRuleBlackListState {
  /// Cloud service classification. For example, Redis includes kvstore_standard, kvstore_sharding, and kvstore_splitrw.
  final pulumi.Input<String>? category;
  /// The timestamp for creating an alert blacklist policy.Unit: milliseconds.
  final pulumi.Input<String>? createTime;
  /// The effective time range of the alert blacklist policy.
  final pulumi.Input<String>? effectiveTime;
  /// The start timestamp of the alert blacklist policy.Unit: milliseconds.
  final pulumi.Input<String>? enableEndTime;
  /// The end timestamp of the alert blacklist policy.Unit: milliseconds.
  final pulumi.Input<String>? enableStartTime;
  /// The list of instances of cloud services specified in the alert blacklist policy.
  final pulumi.Input<List<String>>? instances;
  /// The status of the alert blacklist policy. Value:-true: enabled.-false: disabled.
  final pulumi.Input<bool>? isEnable;
  /// The ID of the blacklist policy.
  final pulumi.Input<String>? metricRuleBlackListId;
  /// The name of the alert blacklist policy.
  final pulumi.Input<String>? metricRuleBlackListName;
  /// Monitoring metrics in the instance. See `metrics` below.
  final pulumi.Input<List<MetricRuleBlackListMetric>>? metrics;
  /// The data namespace of the cloud service.
  final pulumi.Input<String>? namespace;
  /// The effective range of the alert blacklist policy. Value:-USER: The alert blacklist policy only takes effect in the current Alibaba cloud account.-GROUP: The alert blacklist policy takes effect in the specified application GROUP.
  final pulumi.Input<String>? scopeType;
  /// Application Group ID list. The format is JSON Array.> This parameter is displayed only when 'ScopeType' is 'GROUP.
  final pulumi.Input<List<String>>? scopeValues;
  /// Modify the timestamp of the alert blacklist policy.Unit: milliseconds.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [MetricRuleBlackListState].
  /// [category] Cloud service classification. For example, Redis includes kvstore_standard, kvstore_sharding, and kvstore_splitrw.
  /// [createTime] The timestamp for creating an alert blacklist policy.Unit: milliseconds.
  /// [effectiveTime] The effective time range of the alert blacklist policy.
  /// [enableEndTime] The start timestamp of the alert blacklist policy.Unit: milliseconds.
  /// [enableStartTime] The end timestamp of the alert blacklist policy.Unit: milliseconds.
  /// [instances] The list of instances of cloud services specified in the alert blacklist policy.
  /// [isEnable] The status of the alert blacklist policy. Value:-true: enabled.-false: disabled.
  /// [metricRuleBlackListId] The ID of the blacklist policy.
  /// [metricRuleBlackListName] The name of the alert blacklist policy.
  /// [metrics] Monitoring metrics in the instance. See `metrics` below.
  /// [namespace] The data namespace of the cloud service.
  /// [scopeType] The effective range of the alert blacklist policy. Value:-USER: The alert blacklist policy only takes effect in the current Alibaba cloud account.-GROUP: The alert blacklist policy takes effect in the specified application GROUP.
  /// [scopeValues] Application Group ID list. The format is JSON Array.> This parameter is displayed only when 'ScopeType' is 'GROUP.
  /// [updateTime] Modify the timestamp of the alert blacklist policy.Unit: milliseconds.
  MetricRuleBlackListState({
    this.category,
    this.createTime,
    this.effectiveTime,
    this.enableEndTime,
    this.enableStartTime,
    this.instances,
    this.isEnable,
    this.metricRuleBlackListId,
    this.metricRuleBlackListName,
    this.metrics,
    this.namespace,
    this.scopeType,
    this.scopeValues,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'createTime': ?createTime,
      'effectiveTime': ?effectiveTime,
      'enableEndTime': ?enableEndTime,
      'enableStartTime': ?enableStartTime,
      'instances': ?instances,
      'isEnable': ?isEnable,
      'metricRuleBlackListId': ?metricRuleBlackListId,
      'metricRuleBlackListName': ?metricRuleBlackListName,
      'metrics': ?pulumi.Input.mapOptionalInputValue<List<MetricRuleBlackListMetric>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<MetricRuleBlackListMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'namespace': ?namespace,
      'scopeType': ?scopeType,
      'scopeValues': ?scopeValues,
      'updateTime': ?updateTime,
    };
  }

  factory MetricRuleBlackListState.fromMap(Map<String, dynamic> map) {
    return MetricRuleBlackListState(
      category: map['category'] == null ? null : (map['category'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      effectiveTime: map['effectiveTime'] == null ? null : (map['effectiveTime'] as String).input(),
      enableEndTime: map['enableEndTime'] == null ? null : (map['enableEndTime'] as String).input(),
      enableStartTime: map['enableStartTime'] == null ? null : (map['enableStartTime'] as String).input(),
      instances: map['instances'] == null ? null : ((map['instances'] as List).cast<String>()).input(),
      isEnable: map['isEnable'] == null ? null : (map['isEnable'] as bool).input(),
      metricRuleBlackListId: map['metricRuleBlackListId'] == null ? null : (map['metricRuleBlackListId'] as String).input(),
      metricRuleBlackListName: map['metricRuleBlackListName'] == null ? null : (map['metricRuleBlackListName'] as String).input(),
      metrics: map['metrics'] == null ? null : (pulumi.Input.decodeList<MetricRuleBlackListMetric>(map['metrics'], (value) => MetricRuleBlackListMetric.fromMap((value as Map).cast<String, dynamic>()))).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      scopeType: map['scopeType'] == null ? null : (map['scopeType'] as String).input(),
      scopeValues: map['scopeValues'] == null ? null : ((map['scopeValues'] as List).cast<String>()).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

