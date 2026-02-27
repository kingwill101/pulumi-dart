// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for OrganizationSecurityPolicyAssociation.
class OrganizationSecurityPolicyAssociationArgs {
  /// The resource that the security policy is attached to.
  final pulumi.Input<String> attachmentId;

  /// The name for an association.
  final pulumi.Input<String>? name;

  /// The security policy ID of the association.
  final pulumi.Input<String> policyId;

  OrganizationSecurityPolicyAssociationArgs({
    required this.attachmentId,
    this.name,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attachmentId'] = attachmentId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['policyId'] = policyId;
    return map;
  }

  factory OrganizationSecurityPolicyAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return OrganizationSecurityPolicyAssociationArgs(
      attachmentId: pulumi.Input.asInput<String>(map['attachmentId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      policyId: pulumi.Input.asInput<String>(map['policyId']),
    );
  }
}
