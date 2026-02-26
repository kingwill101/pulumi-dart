// ignore_for_file: unused_element, unnecessary_cast

class GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleAction {
  /// Set of routing policy names to associate when the conditions match.
  final List<String> associateRoutingPolicies;

  GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleAction({
    required this.associateRoutingPolicies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['associateRoutingPolicies'] = associateRoutingPolicies;
    return map;
  }

  factory GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleAction.fromMap(
      Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleAction(
      associateRoutingPolicies:
          (map['associateRoutingPolicies'] as List).cast<String>(),
    );
  }
}
