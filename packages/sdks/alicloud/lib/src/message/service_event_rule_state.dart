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
  const ServiceEventRuleState({
    this.deliveryMode,
    this.endpoint,
    this.eventTypes,
    this.matchRules,
    this.ruleName,
  });

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
      deliveryMode: (() { final guardedValue = map['deliveryMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceEventRuleEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventTypes: (() { final guardedValue = map['eventTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      matchRules: (() { final guardedValue = map['matchRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<List<ServiceEventRuleMatchRule>>(guardedValue, (value) => pulumi.Input.decodeList<ServiceEventRuleMatchRule>(value, (value) => ServiceEventRuleMatchRule.fromMap((value as Map).cast<String, dynamic>())))); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

