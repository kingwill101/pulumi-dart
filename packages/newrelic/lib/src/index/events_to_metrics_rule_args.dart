// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_events_to_metrics_rule_events_to_metrics_rule_args_doc}
/// The set of arguments for EventsToMetricsRule.
/// {@endtemplate}
/// {@macro pulumi_index_events_to_metrics_rule_events_to_metrics_rule_args_doc}
class EventsToMetricsRuleArgs {
  /// Account with the event and where the metrics will be put.
  final pulumi.Input<String>? accountId;
  /// Provides additional information about the rule.
  final pulumi.Input<String>? description;
  /// True means this rule is enabled. False means the rule is currently not creating metrics.
  final pulumi.Input<bool>? enabled;
  /// The name of the rule. This must be unique within an account.
  final pulumi.Input<String>? name;
  /// Explains how to create metrics from events.
  final pulumi.Input<String> nrql;

  /// Creates a new [EventsToMetricsRuleArgs].
  /// [accountId] Account with the event and where the metrics will be put.
  /// [description] Provides additional information about the rule.
  /// [enabled] True means this rule is enabled. False means the rule is currently not creating metrics.
  /// [name] The name of the rule. This must be unique within an account.
  /// [nrql] Explains how to create metrics from events.
  EventsToMetricsRuleArgs({
    String? accountId,
    String? description,
    bool? enabled,
    String? name,
    required String nrql,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      nrql = pulumi.Input.asInput<String>(nrql);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'enabled': ?enabled,
      'name': ?name,
      'nrql': nrql,
    };
  }

  factory EventsToMetricsRuleArgs.fromMap(Map<String, dynamic> map) {
    return EventsToMetricsRuleArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      nrql: map['nrql'] as String,
    );
  }
}

