// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prometheus_rule.dart';

/// {@template pulumi_alertsmanagement_prometheus_rule_group_args_doc}
/// The set of arguments for PrometheusRuleGroup.
/// {@endtemplate}
/// {@macro pulumi_alertsmanagement_prometheus_rule_group_args_doc}
class PrometheusRuleGroupArgs {
  /// Apply rule to data from a specific cluster.
  final pulumi.Input<String>? clusterName;
  /// Rule group description.
  final pulumi.Input<String>? description;
  /// Enable/disable rule group.
  final pulumi.Input<bool>? enabled;
  /// The interval in which to run the Prometheus rule group represented in ISO 8601 duration format. Should be between 1 and 15 minutes
  final pulumi.Input<String>? interval;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the rule group.
  final pulumi.Input<String>? ruleGroupName;
  /// Defines the rules in the Prometheus rule group.
  final pulumi.Input<List<PrometheusRule>> rules;
  /// Target Azure Monitor workspaces resource ids. This api-version is currently limited to creating with one scope. This may change in future.
  final pulumi.Input<List<String>> scopes;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PrometheusRuleGroupArgs].
  /// [clusterName] Apply rule to data from a specific cluster.
  /// [description] Rule group description.
  /// [enabled] Enable/disable rule group.
  /// [interval] The interval in which to run the Prometheus rule group represented in ISO 8601 duration format. Should be between 1 and 15 minutes
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleGroupName] The name of the rule group.
  /// [rules] Defines the rules in the Prometheus rule group.
  /// [scopes] Target Azure Monitor workspaces resource ids. This api-version is currently limited to creating with one scope. This may change in future.
  /// [tags] Resource tags.
  PrometheusRuleGroupArgs({
    String? clusterName,
    String? description,
    bool? enabled,
    String? interval,
    String? location,
    required String resourceGroupName,
    String? ruleGroupName,
    required List<PrometheusRule> rules,
    required List<String> scopes,
    Map<String, String>? tags,
  }) :
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      interval = pulumi.Input.asOptionalInput<String>(interval),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleGroupName = pulumi.Input.asOptionalInput<String>(ruleGroupName),
      rules = pulumi.Input.asInput<List<PrometheusRule>>(rules),
      scopes = pulumi.Input.asInput<List<String>>(scopes),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'description': ?description,
      'enabled': ?enabled,
      'interval': ?interval,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'ruleGroupName': ?ruleGroupName,
      'rules': pulumi.Input.mapInputValue<List<PrometheusRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<PrometheusRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scopes': scopes,
      'tags': ?tags,
    };
  }

  factory PrometheusRuleGroupArgs.fromMap(Map<String, dynamic> map) {
    return PrometheusRuleGroupArgs(
      clusterName: map['clusterName'] == null ? null : map['clusterName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      interval: map['interval'] == null ? null : map['interval'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      ruleGroupName: map['ruleGroupName'] == null ? null : map['ruleGroupName'] as String,
      rules: pulumi.Input.decodeList<PrometheusRule>(map['rules'], (value) => PrometheusRule.fromMap((value as Map).cast<String, dynamic>())),
      scopes: (map['scopes'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

