// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for OrganizationSecurityPolicyAssociation.
class OrganizationSecurityPolicyAssociationArgs {
  /// The resource that the security policy is attached to.
  final Input<String> attachmentId;

  /// The name for an association.
  final Input<String>? name;

  /// The security policy ID of the association.
  final Input<String> policyId;

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
      attachmentId: Input.asInput<String>(map['attachmentId']),
      name: Input.asOptionalInput<String>(map['name']),
      policyId: Input.asInput<String>(map['policyId']),
    );
  }
}
