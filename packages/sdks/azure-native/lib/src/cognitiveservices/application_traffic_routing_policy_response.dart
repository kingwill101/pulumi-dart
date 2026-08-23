// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_routing_rule_response.dart';

/// Type representing an application traffic policy as a property of an agentic application.
class ApplicationTrafficRoutingPolicyResponse {
  /// Methodology used to route traffic to the application's deployments.
  final pulumi.Input<String>? protocol;
  /// Gets or sets the collection of traffic routing rules.
  final pulumi.Input<List<TrafficRoutingRuleResponse>>? rules;

  /// Creates a new [ApplicationTrafficRoutingPolicyResponse].
  /// [protocol] Methodology used to route traffic to the application's deployments.
  /// [rules] Gets or sets the collection of traffic routing rules.
  const ApplicationTrafficRoutingPolicyResponse({
    this.protocol,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocol': ?protocol,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<TrafficRoutingRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<TrafficRoutingRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationTrafficRoutingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationTrafficRoutingPolicyResponse(
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrafficRoutingRuleResponse>(guardedValue, (value) => TrafficRoutingRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
