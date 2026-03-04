// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metric_rule_black_lists_list_metric.dart';

class GetMetricRuleBlackListsList {
  /// Cloud service classification. For example, Redis includes kvstore_standard, kvstore_sharding, and kvstore_splitrw.
  final pulumi.Input<String> category;

  /// The timestamp for creating an alert blacklist policy.Unit: milliseconds.
  final pulumi.Input<String> createTime;

  /// The effective time range of the alert blacklist policy.
  final pulumi.Input<String> effectiveTime;

  /// The start timestamp of the alert blacklist policy.Unit: milliseconds.
  final pulumi.Input<String> enableEndTime;

  /// The end timestamp of the alert blacklist policy.Unit: milliseconds.
  final pulumi.Input<String> enableStartTime;
  final pulumi.Input<String> id;

  /// The list of instances of cloud services specified in the alert blacklist policy.
  final pulumi.Input<List<String>> instances;

  /// The status of the alert blacklist policy. Value:-true: enabled.-false: disabled.
  final pulumi.Input<bool> isEnable;

  /// The first ID of the resource
  final pulumi.Input<String> metricRuleBlackListId;

  /// The name of the alert blacklist policy.
  final pulumi.Input<String> metricRuleBlackListName;

  /// Monitoring metrics in the instance.
  final pulumi.Input<List<GetMetricRuleBlackListsListMetric>> metrics;

  /// The data namespace of the cloud service.
  final pulumi.Input<String> namespace;

  /// The effective range of the alert blacklist policy. Value:-USER: The alert blacklist policy only takes effect in the current Alibaba cloud account.-GROUP: The alert blacklist policy takes effect in the specified application GROUP.
  final pulumi.Input<String> scopeType;

  /// Application Group ID list. The format is JSON Array.&gt; This parameter is displayed only when 'ScopeType' is 'GROUP.
  final pulumi.Input<List<String>> scopeValues;

  /// Creates a new [GetMetricRuleBlackListsList].
  /// [category] Cloud service classification. For example, Redis includes kvstore_standard, kvstore_sharding, and kvstore_splitrw.
  /// [createTime] The timestamp for creating an alert blacklist policy.Unit: milliseconds.
  /// [effectiveTime] The effective time range of the alert blacklist policy.
  /// [enableEndTime] The start timestamp of the alert blacklist policy.Unit: milliseconds.
  /// [enableStartTime] The end timestamp of the alert blacklist policy.Unit: milliseconds.
  /// [id] Required.
  /// [instances] The list of instances of cloud services specified in the alert blacklist policy.
  /// [isEnable] The status of the alert blacklist policy. Value:-true: enabled.-false: disabled.
  /// [metricRuleBlackListId] The first ID of the resource
  /// [metricRuleBlackListName] The name of the alert blacklist policy.
  /// [metrics] Monitoring metrics in the instance.
  /// [namespace] The data namespace of the cloud service.
  /// [scopeType] The effective range of the alert blacklist policy. Value:-USER: The alert blacklist policy only takes effect in the current Alibaba cloud account.-GROUP: The alert blacklist policy takes effect in the specified application GROUP.
  /// [scopeValues] Application Group ID list. The format is JSON Array.&gt; This parameter is displayed only when 'ScopeType' is 'GROUP.
  GetMetricRuleBlackListsList({
    required this.category,
    required this.createTime,
    required this.effectiveTime,
    required this.enableEndTime,
    required this.enableStartTime,
    required this.id,
    required this.instances,
    required this.isEnable,
    required this.metricRuleBlackListId,
    required this.metricRuleBlackListName,
    required this.metrics,
    required this.namespace,
    required this.scopeType,
    required this.scopeValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'createTime': createTime,
      'effectiveTime': effectiveTime,
      'enableEndTime': enableEndTime,
      'enableStartTime': enableStartTime,
      'id': id,
      'instances': instances,
      'isEnable': isEnable,
      'metricRuleBlackListId': metricRuleBlackListId,
      'metricRuleBlackListName': metricRuleBlackListName,
      'metrics':
          pulumi.Input.mapInputValue<
            List<GetMetricRuleBlackListsListMetric>,
            List<Map<String, dynamic>>
          >(
            metrics,
            (value) =>
                pulumi.Input.encodeList<
                  GetMetricRuleBlackListsListMetric,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'namespace': namespace,
      'scopeType': scopeType,
      'scopeValues': scopeValues,
    };
  }

  factory GetMetricRuleBlackListsList.fromMap(Map<String, dynamic> map) {
    return GetMetricRuleBlackListsList(
      category: pulumi.Input.fromValue(map['category'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      effectiveTime: pulumi.Input.fromValue(map['effectiveTime'] as String),
      enableEndTime: pulumi.Input.fromValue(map['enableEndTime'] as String),
      enableStartTime: pulumi.Input.fromValue(map['enableStartTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instances: pulumi.Input.fromValue(
        (map['instances'] as List).cast<String>(),
      ),
      isEnable: pulumi.Input.fromValue(map['isEnable'] as bool),
      metricRuleBlackListId: pulumi.Input.fromValue(
        map['metricRuleBlackListId'] as String,
      ),
      metricRuleBlackListName: pulumi.Input.fromValue(
        map['metricRuleBlackListName'] as String,
      ),
      metrics: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetMetricRuleBlackListsListMetric>(
          map['metrics']!,
          (value) => GetMetricRuleBlackListsListMetric.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      scopeType: pulumi.Input.fromValue(map['scopeType'] as String),
      scopeValues: pulumi.Input.fromValue(
        (map['scopeValues'] as List).cast<String>(),
      ),
    );
  }
}
