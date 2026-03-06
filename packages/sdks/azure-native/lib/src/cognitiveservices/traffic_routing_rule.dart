// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a rule for routing traffic to a specific deployment.
class TrafficRoutingRule {
  /// The unique identifier of the deployment to which traffic is routed by this rule.
  final pulumi.Input<String>? deploymentId;
  /// A user-provided description for this traffic routing rule.
  final pulumi.Input<String>? description;
  /// The identifier of this traffic routing rule.
  final pulumi.Input<String>? ruleId;
  /// Gets or sets the percentage of traffic allocated to this instance.
  final pulumi.Input<int>? trafficPercentage;

  /// Creates a new [TrafficRoutingRule].
  /// [deploymentId] The unique identifier of the deployment to which traffic is routed by this rule.
  /// [description] A user-provided description for this traffic routing rule.
  /// [ruleId] The identifier of this traffic routing rule.
  /// [trafficPercentage] Gets or sets the percentage of traffic allocated to this instance.
  const TrafficRoutingRule({
    this.deploymentId,
    this.description,
    this.ruleId,
    this.trafficPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentId': ?deploymentId,
      'description': ?description,
      'ruleId': ?ruleId,
      'trafficPercentage': ?trafficPercentage,
    };
  }

  factory TrafficRoutingRule.fromMap(Map<String, dynamic> map) {
    return TrafficRoutingRule(
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficPercentage: (() { final guardedValue = map['trafficPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

