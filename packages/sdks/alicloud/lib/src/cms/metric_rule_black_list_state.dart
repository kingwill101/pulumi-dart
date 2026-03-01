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
    pulumi.Output<String>? category,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? effectiveTime,
    pulumi.Output<String>? enableEndTime,
    pulumi.Output<String>? enableStartTime,
    pulumi.Output<List<String>>? instances,
    pulumi.Output<bool>? isEnable,
    pulumi.Output<String>? metricRuleBlackListId,
    pulumi.Output<String>? metricRuleBlackListName,
    pulumi.Output<List<MetricRuleBlackListMetric>>? metrics,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? scopeType,
    pulumi.Output<List<String>>? scopeValues,
    pulumi.Output<String>? updateTime,
  }) :
      category = pulumi.Input.asOptionalInput<String>(category),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveTime = pulumi.Input.asOptionalInput<String>(effectiveTime),
      enableEndTime = pulumi.Input.asOptionalInput<String>(enableEndTime),
      enableStartTime = pulumi.Input.asOptionalInput<String>(enableStartTime),
      instances = pulumi.Input.asOptionalInput<List<String>>(instances),
      isEnable = pulumi.Input.asOptionalInput<bool>(isEnable),
      metricRuleBlackListId = pulumi.Input.asOptionalInput<String>(metricRuleBlackListId),
      metricRuleBlackListName = pulumi.Input.asOptionalInput<String>(metricRuleBlackListName),
      metrics = pulumi.Input.asOptionalInput<List<MetricRuleBlackListMetric>>(metrics),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      scopeType = pulumi.Input.asOptionalInput<String>(scopeType),
      scopeValues = pulumi.Input.asOptionalInput<List<String>>(scopeValues),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveTime: map['effectiveTime'] == null ? null : pulumi.Output.create<String>(map['effectiveTime'] as String),
      enableEndTime: map['enableEndTime'] == null ? null : pulumi.Output.create<String>(map['enableEndTime'] as String),
      enableStartTime: map['enableStartTime'] == null ? null : pulumi.Output.create<String>(map['enableStartTime'] as String),
      instances: map['instances'] == null ? null : pulumi.Output.create<List<String>>((map['instances'] as List).cast<String>()),
      isEnable: map['isEnable'] == null ? null : pulumi.Output.create<bool>(map['isEnable'] as bool),
      metricRuleBlackListId: map['metricRuleBlackListId'] == null ? null : pulumi.Output.create<String>(map['metricRuleBlackListId'] as String),
      metricRuleBlackListName: map['metricRuleBlackListName'] == null ? null : pulumi.Output.create<String>(map['metricRuleBlackListName'] as String),
      metrics: map['metrics'] == null ? null : pulumi.Output.create<List<MetricRuleBlackListMetric>>(pulumi.Input.decodeList<MetricRuleBlackListMetric>(map['metrics'], (value) => MetricRuleBlackListMetric.fromMap((value as Map).cast<String, dynamic>()))),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      scopeType: map['scopeType'] == null ? null : pulumi.Output.create<String>(map['scopeType'] as String),
      scopeValues: map['scopeValues'] == null ? null : pulumi.Output.create<List<String>>((map['scopeValues'] as List).cast<String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

