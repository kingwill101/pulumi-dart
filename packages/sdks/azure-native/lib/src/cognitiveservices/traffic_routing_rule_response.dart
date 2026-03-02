// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a rule for routing traffic to a specific deployment.
class TrafficRoutingRuleResponse {
  /// The unique identifier of the deployment to which traffic is routed by this rule.
  final pulumi.Input<String>? deploymentId;
  /// A user-provided description for this traffic routing rule.
  final pulumi.Input<String>? description;
  /// The identifier of this traffic routing rule.
  final pulumi.Input<String>? ruleId;
  /// Gets or sets the percentage of traffic allocated to this instance.
  final pulumi.Input<int>? trafficPercentage;

  /// Creates a new [TrafficRoutingRuleResponse].
  /// [deploymentId] The unique identifier of the deployment to which traffic is routed by this rule.
  /// [description] A user-provided description for this traffic routing rule.
  /// [ruleId] The identifier of this traffic routing rule.
  /// [trafficPercentage] Gets or sets the percentage of traffic allocated to this instance.
  TrafficRoutingRuleResponse({
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

  factory TrafficRoutingRuleResponse.fromMap(Map<String, dynamic> map) {
    return TrafficRoutingRuleResponse(
      deploymentId: map['deploymentId'] == null ? null : (map['deploymentId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      ruleId: map['ruleId'] == null ? null : (map['ruleId'] as String).input(),
      trafficPercentage: map['trafficPercentage'] == null ? null : (map['trafficPercentage'] as int).input(),
    );
  }
}

