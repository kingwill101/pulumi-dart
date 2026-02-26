// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for PolicyAttachment.
class PolicyAttachmentArgs3 {
  /// The unique identifier (ID) of the policy that you want to attach to the target.
  final Input<String> policyId;

  /// If set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, destroy will **not** detach the policy and instead just remove the resource from state. This can be useful in situations where the attachment must be preserved to meet the AWS minimum requirement of 1 attached policy.
  final Input<bool>? skipDestroy;

  /// The unique identifier (ID) of the root, organizational unit, or account number that you want to attach the policy to.
  final Input<String> targetId;

  PolicyAttachmentArgs3({
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

  factory PolicyAttachmentArgs3.fromMap(Map<String, dynamic> map) {
    return PolicyAttachmentArgs3(
      policyId: Input.asInput<String>(map['policyId']),
      skipDestroy: Input.asOptionalInput<bool>(map['skipDestroy']),
      targetId: Input.asInput<String>(map['targetId']),
    );
  }
}
