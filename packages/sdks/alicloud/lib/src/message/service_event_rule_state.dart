// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_event_rule_endpoint.dart';
import 'service_event_rule_match_rule.dart';

/// Input properties used for looking up and filtering ServiceEventRule resources.
class ServiceEventRuleState {
  /// DIRECT: directly delivers to a single queue (1:1) without creating a Topic;
  /// - BROADCAST: BROADCAST to all subscription queues (1:N). You need to create a Topic;
  final pulumi.Input<String>? deliveryMode;
  /// Message Receiving Terminal Endpoint Object. See `endpoint` below.
  final pulumi.Input<ServiceEventRuleEndpoint>? endpoint;
  /// Event Type List
  final pulumi.Input<List<String>>? eventTypes;
  /// Matching rules, or relationships between multiple rules. See `match_rules` below.
  final pulumi.Input<List<List<ServiceEventRuleMatchRule>>>? matchRules;
  /// The event notification rule name.
  final pulumi.Input<String>? ruleName;

  /// Creates a new [ServiceEventRuleState].
  /// [deliveryMode] DIRECT: directly delivers to a single queue (1:1) without creating a Topic;
  /// [endpoint] Message Receiving Terminal Endpoint Object. See `endpoint` below.
  /// [eventTypes] Event Type List
  /// [matchRules] Matching rules, or relationships between multiple rules. See `match_rules` below.
  /// [ruleName] The event notification rule name.
  ServiceEventRuleState({
    pulumi.Output<String>? deliveryMode,
    pulumi.Output<ServiceEventRuleEndpoint>? endpoint,
    pulumi.Output<List<String>>? eventTypes,
    pulumi.Output<List<List<ServiceEventRuleMatchRule>>>? matchRules,
    pulumi.Output<String>? ruleName,
  }) :
      deliveryMode = pulumi.Input.asOptionalInput<String>(deliveryMode),
      endpoint = pulumi.Input.asOptionalInput<ServiceEventRuleEndpoint>(endpoint),
      eventTypes = pulumi.Input.asOptionalInput<List<String>>(eventTypes),
      matchRules = pulumi.Input.asOptionalInput<List<List<ServiceEventRuleMatchRule>>>(matchRules),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryMode': ?deliveryMode,
      'endpoint': ?pulumi.Input.mapOptionalInputValue<ServiceEventRuleEndpoint, Map<String, dynamic>>(endpoint, (value) => value.toMap()),
      'eventTypes': ?eventTypes,
      'matchRules': ?pulumi.Input.mapOptionalInputValue<List<List<ServiceEventRuleMatchRule>>, List<List<Map<String, dynamic>>>>(matchRules, (value) => pulumi.Input.encodeList<List<ServiceEventRuleMatchRule>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<ServiceEventRuleMatchRule, Map<String, dynamic>>(value, (value) => value.toMap()))),
      'ruleName': ?ruleName,
    };
  }

  factory ServiceEventRuleState.fromMap(Map<String, dynamic> map) {
    return ServiceEventRuleState(
      deliveryMode: map['deliveryMode'] == null ? null : pulumi.Output.create<String>(map['deliveryMode'] as String),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<ServiceEventRuleEndpoint>(ServiceEventRuleEndpoint.fromMap((map['endpoint'] as Map).cast<String, dynamic>())),
      eventTypes: map['eventTypes'] == null ? null : pulumi.Output.create<List<String>>((map['eventTypes'] as List).cast<String>()),
      matchRules: map['matchRules'] == null ? null : pulumi.Output.create<List<List<ServiceEventRuleMatchRule>>>(pulumi.Input.decodeList<List<ServiceEventRuleMatchRule>>(map['matchRules'], (value) => pulumi.Input.decodeList<ServiceEventRuleMatchRule>(value, (value) => ServiceEventRuleMatchRule.fromMap((value as Map).cast<String, dynamic>())))),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
    );
  }
}

