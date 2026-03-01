// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_event_rule_endpoint.dart';
import 'service_event_rule_match_rule.dart';

/// {@template pulumi_message_service_event_rule_service_event_rule_args_doc}
/// The set of arguments for ServiceEventRule.
/// {@endtemplate}
/// {@macro pulumi_message_service_event_rule_service_event_rule_args_doc}
class ServiceEventRuleArgs {
  /// DIRECT: directly delivers to a single queue (1:1) without creating a Topic;
  /// - BROADCAST: BROADCAST to all subscription queues (1:N). You need to create a Topic;
  final pulumi.Input<String>? deliveryMode;
  /// Message Receiving Terminal Endpoint Object. See `endpoint` below.
  final pulumi.Input<ServiceEventRuleEndpoint>? endpoint;
  /// Event Type List
  final pulumi.Input<List<String>> eventTypes;
  /// Matching rules, or relationships between multiple rules. See `match_rules` below.
  final pulumi.Input<List<List<ServiceEventRuleMatchRule>>>? matchRules;
  /// The event notification rule name.
  final pulumi.Input<String> ruleName;

  /// Creates a new [ServiceEventRuleArgs].
  /// [deliveryMode] DIRECT: directly delivers to a single queue (1:1) without creating a Topic;
  /// [endpoint] Message Receiving Terminal Endpoint Object. See `endpoint` below.
  /// [eventTypes] Event Type List
  /// [matchRules] Matching rules, or relationships between multiple rules. See `match_rules` below.
  /// [ruleName] The event notification rule name.
  ServiceEventRuleArgs({
    String? deliveryMode,
    ServiceEventRuleEndpoint? endpoint,
    required List<String> eventTypes,
    List<List<ServiceEventRuleMatchRule>>? matchRules,
    required String ruleName,
  }) :
      deliveryMode = pulumi.Input.asOptionalInput<String>(deliveryMode),
      endpoint = pulumi.Input.asOptionalInput<ServiceEventRuleEndpoint>(endpoint),
      eventTypes = pulumi.Input.asInput<List<String>>(eventTypes),
      matchRules = pulumi.Input.asOptionalInput<List<List<ServiceEventRuleMatchRule>>>(matchRules),
      ruleName = pulumi.Input.asInput<String>(ruleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryMode': ?deliveryMode,
      'endpoint': ?pulumi.Input.mapOptionalInputValue<ServiceEventRuleEndpoint, Map<String, dynamic>>(endpoint, (value) => value.toMap()),
      'eventTypes': eventTypes,
      'matchRules': ?pulumi.Input.mapOptionalInputValue<List<List<ServiceEventRuleMatchRule>>, List<List<Map<String, dynamic>>>>(matchRules, (value) => pulumi.Input.encodeList<List<ServiceEventRuleMatchRule>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<ServiceEventRuleMatchRule, Map<String, dynamic>>(value, (value) => value.toMap()))),
      'ruleName': ruleName,
    };
  }

  factory ServiceEventRuleArgs.fromMap(Map<String, dynamic> map) {
    return ServiceEventRuleArgs(
      deliveryMode: map['deliveryMode'] == null ? null : map['deliveryMode'] as String,
      endpoint: map['endpoint'] == null ? null : ServiceEventRuleEndpoint.fromMap((map['endpoint'] as Map).cast<String, dynamic>()),
      eventTypes: (map['eventTypes'] as List).cast<String>(),
      matchRules: map['matchRules'] == null ? null : pulumi.Input.decodeList<List<ServiceEventRuleMatchRule>>(map['matchRules'], (value) => pulumi.Input.decodeList<ServiceEventRuleMatchRule>(value, (value) => ServiceEventRuleMatchRule.fromMap((value as Map).cast<String, dynamic>()))),
      ruleName: map['ruleName'] as String,
    );
  }
}

