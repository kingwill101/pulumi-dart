// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleAction {
  /// Set of routing policy names to associate when the conditions match.
  final pulumi.Input<List<String>> associateRoutingPolicies;

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

  factory GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleAction(
      associateRoutingPolicies: pulumi.Input.fromValue(
        (map['associateRoutingPolicies'] as List).cast<String>(),
      ),
    );
  }
}
