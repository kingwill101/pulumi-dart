// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_role_policy_attachments_attached_policy.dart';

/// Result data returned by getRolePolicyAttachments.
class GetRolePolicyAttachmentsResult {
  /// List of attached managed policies. See below.
  final List<GetRolePolicyAttachmentsAttachedPolicy> attachedPolicies;
  final String? pathPrefix;
  final String roleName;

  /// Creates a new [GetRolePolicyAttachmentsResult].
  /// [attachedPolicies] List of attached managed policies. See below.
  /// [pathPrefix] Optional.
  /// [roleName] Required.
  const GetRolePolicyAttachmentsResult({
    required this.attachedPolicies,
    this.pathPrefix,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedPolicies': pulumi.Input.encodeList<GetRolePolicyAttachmentsAttachedPolicy, Map<String, dynamic>>(attachedPolicies, (value) => value.toMap()),
      'pathPrefix': ?pathPrefix,
      'roleName': roleName,
    };
  }

  factory GetRolePolicyAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetRolePolicyAttachmentsResult(
      attachedPolicies: pulumi.Input.decodeList<GetRolePolicyAttachmentsAttachedPolicy>(map['attachedPolicies']!, (value) => GetRolePolicyAttachmentsAttachedPolicy.fromMap((value as Map).cast<String, dynamic>())),
      pathPrefix: (() { final guardedValue = map['pathPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleName: map['roleName'] as String,
    );
  }
}
