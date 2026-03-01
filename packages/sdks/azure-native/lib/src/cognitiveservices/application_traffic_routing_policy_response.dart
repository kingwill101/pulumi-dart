// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_routing_rule_response.dart';

/// Type representing an application traffic policy as a property of an agentic application.
class ApplicationTrafficRoutingPolicyResponse {
  /// Methodology used to route traffic to the application's deployments.
  final String? protocol;
  /// Gets or sets the collection of traffic routing rules.
  final List<TrafficRoutingRuleResponse>? rules;

  /// Creates a new [ApplicationTrafficRoutingPolicyResponse].
  /// [protocol] Methodology used to route traffic to the application's deployments.
  /// [rules] Gets or sets the collection of traffic routing rules.
  ApplicationTrafficRoutingPolicyResponse({
    this.protocol,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocol': ?protocol,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<TrafficRoutingRuleResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory ApplicationTrafficRoutingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationTrafficRoutingPolicyResponse(
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<TrafficRoutingRuleResponse>(map['rules'], (value) => TrafficRoutingRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

