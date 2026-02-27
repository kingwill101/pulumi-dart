// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_core_network_policy_document_routing_policy_routing_policy_rule/get_core_network_policy_document_routing_policy_routing_policy_rule.dart';

class GetCoreNetworkPolicyDocumentRoutingPolicy {
  /// Description of the routing policy.
  final String? routingPolicyDescription;

  /// Direction of the routing policy. Valid values: `inbound`, `outbound`.
  final String routingPolicyDirection;

  /// Name of the routing policy. Must be 1-100 alphanumeric characters.
  final String routingPolicyName;

  /// Priority number for the routing policy. Must be between 1 and 9999. Lower numbers are evaluated first.
  final int routingPolicyNumber;

  /// List of routing policy rules. Each rule defines match conditions and actions. Detailed below.
  final List<GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRule>
      routingPolicyRules;

  GetCoreNetworkPolicyDocumentRoutingPolicy({
    this.routingPolicyDescription,
    required this.routingPolicyDirection,
    required this.routingPolicyName,
    required this.routingPolicyNumber,
    required this.routingPolicyRules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final routingPolicyDescriptionValue = routingPolicyDescription;
    if (routingPolicyDescriptionValue != null) {
      map['routingPolicyDescription'] = routingPolicyDescriptionValue;
    }
    map['routingPolicyDirection'] = routingPolicyDirection;
    map['routingPolicyName'] = routingPolicyName;
    map['routingPolicyNumber'] = routingPolicyNumber;
    map['routingPolicyRules'] = Input.encodeList<
        GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRule,
        Map<String, dynamic>>(routingPolicyRules, (value) => value.toMap());
    return map;
  }

  factory GetCoreNetworkPolicyDocumentRoutingPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentRoutingPolicy(
      routingPolicyDescription: map['routingPolicyDescription'] == null
          ? null
          : map['routingPolicyDescription'] as String,
      routingPolicyDirection: map['routingPolicyDirection'] as String,
      routingPolicyName: map['routingPolicyName'] as String,
      routingPolicyNumber: map['routingPolicyNumber'] as int,
      routingPolicyRules: Input.decodeList<
              GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRule>(
          map['routingPolicyRules'],
          (value) => GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRule
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
