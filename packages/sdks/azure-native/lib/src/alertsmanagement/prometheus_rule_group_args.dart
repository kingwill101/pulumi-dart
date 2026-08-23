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
  const PrometheusRuleGroupArgs({
    this.clusterName,
    this.description,
    this.enabled,
    this.interval,
    this.location,
    required this.resourceGroupName,
    this.ruleGroupName,
    required this.rules,
    required this.scopes,
    this.tags,
  });

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
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleGroupName: (() { final guardedValue = map['ruleGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<PrometheusRule>(map['rules']!, (value) => PrometheusRule.fromMap((value as Map).cast<String, dynamic>()))),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
