// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_rule_black_list_metric.dart';

/// {@template pulumi_cms_metric_rule_black_list_metric_rule_black_list_args_doc}
/// The set of arguments for MetricRuleBlackList.
/// {@endtemplate}
/// {@macro pulumi_cms_metric_rule_black_list_metric_rule_black_list_args_doc}
class MetricRuleBlackListArgs {
  /// Cloud service classification. For example, Redis includes kvstore_standard, kvstore_sharding, and kvstore_splitrw.
  final pulumi.Input<String> category;
  /// The effective time range of the alert blacklist policy.
  final pulumi.Input<String>? effectiveTime;
  /// The start timestamp of the alert blacklist policy.Unit: milliseconds.
  final pulumi.Input<String>? enableEndTime;
  /// The end timestamp of the alert blacklist policy.Unit: milliseconds.
  final pulumi.Input<String>? enableStartTime;
  /// The list of instances of cloud services specified in the alert blacklist policy.
  final pulumi.Input<List<String>> instances;
  /// The status of the alert blacklist policy. Value:-true: enabled.-false: disabled.
  final pulumi.Input<bool>? isEnable;
  /// The name of the alert blacklist policy.
  final pulumi.Input<String> metricRuleBlackListName;
  /// Monitoring metrics in the instance. See `metrics` below.
  final pulumi.Input<List<MetricRuleBlackListMetric>>? metrics;
  /// The data namespace of the cloud service.
  final pulumi.Input<String> namespace;
  /// The effective range of the alert blacklist policy. Value:-USER: The alert blacklist policy only takes effect in the current Alibaba cloud account.-GROUP: The alert blacklist policy takes effect in the specified application GROUP.
  final pulumi.Input<String>? scopeType;
  /// Application Group ID list. The format is JSON Array.> This parameter is displayed only when 'ScopeType' is 'GROUP.
  final pulumi.Input<List<String>>? scopeValues;

  /// Creates a new [MetricRuleBlackListArgs].
  /// [category] Cloud service classification. For example, Redis includes kvstore_standard, kvstore_sharding, and kvstore_splitrw.
  /// [effectiveTime] The effective time range of the alert blacklist policy.
  /// [enableEndTime] The start timestamp of the alert blacklist policy.Unit: milliseconds.
  /// [enableStartTime] The end timestamp of the alert blacklist policy.Unit: milliseconds.
  /// [instances] The list of instances of cloud services specified in the alert blacklist policy.
  /// [isEnable] The status of the alert blacklist policy. Value:-true: enabled.-false: disabled.
  /// [metricRuleBlackListName] The name of the alert blacklist policy.
  /// [metrics] Monitoring metrics in the instance. See `metrics` below.
  /// [namespace] The data namespace of the cloud service.
  /// [scopeType] The effective range of the alert blacklist policy. Value:-USER: The alert blacklist policy only takes effect in the current Alibaba cloud account.-GROUP: The alert blacklist policy takes effect in the specified application GROUP.
  /// [scopeValues] Application Group ID list. The format is JSON Array.> This parameter is displayed only when 'ScopeType' is 'GROUP.
  MetricRuleBlackListArgs({
    required String category,
    String? effectiveTime,
    String? enableEndTime,
    String? enableStartTime,
    required List<String> instances,
    bool? isEnable,
    required String metricRuleBlackListName,
    List<MetricRuleBlackListMetric>? metrics,
    required String namespace,
    String? scopeType,
    List<String>? scopeValues,
  }) :
      category = pulumi.Input.asInput<String>(category),
      effectiveTime = pulumi.Input.asOptionalInput<String>(effectiveTime),
      enableEndTime = pulumi.Input.asOptionalInput<String>(enableEndTime),
      enableStartTime = pulumi.Input.asOptionalInput<String>(enableStartTime),
      instances = pulumi.Input.asInput<List<String>>(instances),
      isEnable = pulumi.Input.asOptionalInput<bool>(isEnable),
      metricRuleBlackListName = pulumi.Input.asInput<String>(metricRuleBlackListName),
      metrics = pulumi.Input.asOptionalInput<List<MetricRuleBlackListMetric>>(metrics),
      namespace = pulumi.Input.asInput<String>(namespace),
      scopeType = pulumi.Input.asOptionalInput<String>(scopeType),
      scopeValues = pulumi.Input.asOptionalInput<List<String>>(scopeValues);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'effectiveTime': ?effectiveTime,
      'enableEndTime': ?enableEndTime,
      'enableStartTime': ?enableStartTime,
      'instances': instances,
      'isEnable': ?isEnable,
      'metricRuleBlackListName': metricRuleBlackListName,
      'metrics': ?pulumi.Input.mapOptionalInputValue<List<MetricRuleBlackListMetric>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<MetricRuleBlackListMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'namespace': namespace,
      'scopeType': ?scopeType,
      'scopeValues': ?scopeValues,
    };
  }

  factory MetricRuleBlackListArgs.fromMap(Map<String, dynamic> map) {
    return MetricRuleBlackListArgs(
      category: map['category'] as String,
      effectiveTime: map['effectiveTime'] == null ? null : map['effectiveTime'] as String,
      enableEndTime: map['enableEndTime'] == null ? null : map['enableEndTime'] as String,
      enableStartTime: map['enableStartTime'] == null ? null : map['enableStartTime'] as String,
      instances: (map['instances'] as List).cast<String>(),
      isEnable: map['isEnable'] == null ? null : map['isEnable'] as bool,
      metricRuleBlackListName: map['metricRuleBlackListName'] as String,
      metrics: map['metrics'] == null ? null : pulumi.Input.decodeList<MetricRuleBlackListMetric>(map['metrics'], (value) => MetricRuleBlackListMetric.fromMap((value as Map).cast<String, dynamic>())),
      namespace: map['namespace'] as String,
      scopeType: map['scopeType'] == null ? null : map['scopeType'] as String,
      scopeValues: map['scopeValues'] == null ? null : (map['scopeValues'] as List).cast<String>(),
    );
  }
}

