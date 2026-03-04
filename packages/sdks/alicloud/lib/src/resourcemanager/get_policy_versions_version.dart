// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPolicyVersionsVersion {
  /// The ID of the resource, the value is `&lt;policy_name&gt;`:`&lt;version_id&gt;`.
  final pulumi.Input<String> id;

  /// Indicates whether the policy version is the default version.
  final pulumi.Input<bool> isDefaultVersion;

  /// (Available in v1.114.0+) The policy document of the policy version.
  final pulumi.Input<String> policyDocument;

  /// The ID of the policy version.
  final pulumi.Input<String> versionId;

  /// Creates a new [GetPolicyVersionsVersion].
  /// [id] The ID of the resource, the value is `&lt;policy_name&gt;`:`&lt;version_id&gt;`.
  /// [isDefaultVersion] Indicates whether the policy version is the default version.
  /// [policyDocument] (Available in v1.114.0+) The policy document of the policy version.
  /// [versionId] The ID of the policy version.
  GetPolicyVersionsVersion({
    required this.id,
    required this.isDefaultVersion,
    required this.policyDocument,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'isDefaultVersion': isDefaultVersion,
      'policyDocument': policyDocument,
      'versionId': versionId,
    };
  }

  factory GetPolicyVersionsVersion.fromMap(Map<String, dynamic> map) {
    return GetPolicyVersionsVersion(
      id: pulumi.Input.fromValue(map['id'] as String),
      isDefaultVersion: pulumi.Input.fromValue(map['isDefaultVersion'] as bool),
      policyDocument: pulumi.Input.fromValue(map['policyDocument'] as String),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
    );
  }
}
