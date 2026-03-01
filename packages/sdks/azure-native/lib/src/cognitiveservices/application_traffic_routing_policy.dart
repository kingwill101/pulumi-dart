// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_routing_rule.dart';

/// Type representing an application traffic policy as a property of an agentic application.
class ApplicationTrafficRoutingPolicy {
  /// Methodology used to route traffic to the application's deployments.
  final String? protocol;
  /// Gets or sets the collection of traffic routing rules.
  final List<TrafficRoutingRule>? rules;

  /// Creates a new [ApplicationTrafficRoutingPolicy].
  /// [protocol] Methodology used to route traffic to the application's deployments.
  /// [rules] Gets or sets the collection of traffic routing rules.
  ApplicationTrafficRoutingPolicy({
    this.protocol,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocol': ?protocol,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<TrafficRoutingRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory ApplicationTrafficRoutingPolicy.fromMap(Map<String, dynamic> map) {
    return ApplicationTrafficRoutingPolicy(
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<TrafficRoutingRule>(map['rules'], (value) => TrafficRoutingRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

