// ignore_for_file: unused_element, unnecessary_cast


class GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleAction {
  /// Set of routing policy names to associate when the conditions match.
  final List<String> associateRoutingPolicies;

  /// Creates a new [GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleAction].
  /// [associateRoutingPolicies] Set of routing policy names to associate when the conditions match.
  GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleAction({
    required this.associateRoutingPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associateRoutingPolicies': associateRoutingPolicies,
    };
  }

  factory GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleAction.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleAction(
      associateRoutingPolicies: (map['associateRoutingPolicies'] as List).cast<String>(),
    );
  }
}

