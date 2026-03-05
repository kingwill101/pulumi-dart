// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_core_network_policy_document_routing_policy_routing_policy_rule.dart';

class GetCoreNetworkPolicyDocumentRoutingPolicy {
  /// Description of the routing policy.
  final pulumi.Input<String>? routingPolicyDescription;
  /// Direction of the routing policy. Valid values: `inbound`, `outbound`.
  final pulumi.Input<String> routingPolicyDirection;
  /// Name of the routing policy. Must be 1-100 alphanumeric characters.
  final pulumi.Input<String> routingPolicyName;
  /// Priority number for the routing policy. Must be between 1 and 9999. Lower numbers are evaluated first.
  final pulumi.Input<int> routingPolicyNumber;
  /// List of routing policy rules. Each rule defines match conditions and actions. Detailed below.
  final pulumi.Input<List<GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRule>> routingPolicyRules;

  /// Creates a new [GetCoreNetworkPolicyDocumentRoutingPolicy].
  /// [routingPolicyDescription] Description of the routing policy.
  /// [routingPolicyDirection] Direction of the routing policy. Valid values: `inbound`, `outbound`.
  /// [routingPolicyName] Name of the routing policy. Must be 1-100 alphanumeric characters.
  /// [routingPolicyNumber] Priority number for the routing policy. Must be between 1 and 9999. Lower numbers are evaluated first.
  /// [routingPolicyRules] List of routing policy rules. Each rule defines match conditions and actions. Detailed below.
  GetCoreNetworkPolicyDocumentRoutingPolicy({
    this.routingPolicyDescription,
    required this.routingPolicyDirection,
    required this.routingPolicyName,
    required this.routingPolicyNumber,
    required this.routingPolicyRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routingPolicyDescription': ?routingPolicyDescription,
      'routingPolicyDirection': routingPolicyDirection,
      'routingPolicyName': routingPolicyName,
      'routingPolicyNumber': routingPolicyNumber,
      'routingPolicyRules': pulumi.Input.mapInputValue<List<GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRule>, List<Map<String, dynamic>>>(routingPolicyRules, (value) => pulumi.Input.encodeList<GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCoreNetworkPolicyDocumentRoutingPolicy.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentRoutingPolicy(
      routingPolicyDescription: (() { final guardedValue = map['routingPolicyDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingPolicyDirection: pulumi.Input.fromValue(map['routingPolicyDirection'] as String),
      routingPolicyName: pulumi.Input.fromValue(map['routingPolicyName'] as String),
      routingPolicyNumber: pulumi.Input.fromValue(map['routingPolicyNumber'] as int),
      routingPolicyRules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRule>(map['routingPolicyRules']!, (value) => GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

