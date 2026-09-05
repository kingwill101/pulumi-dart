// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_role_policy_attachments_attached_policy.dart';

/// Result data returned by getRolePolicyAttachments.
class GetRolePolicyAttachmentsResult {
  /// List of attached managed policies. See below.
  final List<GetRolePolicyAttachmentsAttachedPolicy>? attachedPolicies;
  final String? pathPrefix;
  final String? roleName;

  /// Creates a new [GetRolePolicyAttachmentsResult].
  /// [attachedPolicies] List of attached managed policies. See below.
  /// [pathPrefix] Optional.
  /// [roleName] Optional.
  const GetRolePolicyAttachmentsResult({
    this.attachedPolicies,
    this.pathPrefix,
    this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedPolicies': ?(() { final guardedValue = attachedPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRolePolicyAttachmentsAttachedPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'pathPrefix': ?pathPrefix,
      'roleName': ?roleName,
    };
  }

  factory GetRolePolicyAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetRolePolicyAttachmentsResult(
      attachedPolicies: (() { final guardedValue = map['attachedPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRolePolicyAttachmentsAttachedPolicy>(guardedValue, (value) => GetRolePolicyAttachmentsAttachedPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      pathPrefix: (() { final guardedValue = map['pathPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
