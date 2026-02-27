// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for PolicyAttachment.
class PolicyAttachmentOrganizationsArgs {
  /// The unique identifier (ID) of the policy that you want to attach to the target.
  final pulumi.Input<String> policyId;

  /// If set to `true`, destroy will **not** detach the policy and instead just remove the resource from state. This can be useful in situations where the attachment must be preserved to meet the AWS minimum requirement of 1 attached policy.
  final pulumi.Input<bool>? skipDestroy;

  /// The unique identifier (ID) of the root, organizational unit, or account number that you want to attach the policy to.
  final pulumi.Input<String> targetId;

  PolicyAttachmentOrganizationsArgs({
    required this.policyId,
    this.skipDestroy,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyId'] = policyId;
    final skipDestroyValue = skipDestroy;
    if (skipDestroyValue != null) {
      map['skipDestroy'] = skipDestroyValue;
    }
    map['targetId'] = targetId;
    return map;
  }

  factory PolicyAttachmentOrganizationsArgs.fromMap(Map<String, dynamic> map) {
    return PolicyAttachmentOrganizationsArgs(
      policyId: pulumi.Input.asInput<String>(map['policyId']),
      skipDestroy: pulumi.Input.asOptionalInput<bool>(map['skipDestroy']),
      targetId: pulumi.Input.asInput<String>(map['targetId']),
    );
  }
}
