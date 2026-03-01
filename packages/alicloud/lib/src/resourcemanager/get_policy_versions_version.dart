// ignore_for_file: unused_element, unnecessary_cast


class GetPolicyVersionsVersion {
  /// The ID of the resource, the value is `<policy_name>`:`<version_id>`.
  final String id;
  /// Indicates whether the policy version is the default version.
  final bool isDefaultVersion;
  /// (Available in v1.114.0+) The policy document of the policy version.
  final String policyDocument;
  /// The ID of the policy version.
  final String versionId;

  /// Creates a new [GetPolicyVersionsVersion].
  /// [id] The ID of the resource, the value is `<policy_name>`:`<version_id>`.
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
      id: map['id'] as String,
      isDefaultVersion: map['isDefaultVersion'] as bool,
      policyDocument: map['policyDocument'] as String,
      versionId: map['versionId'] as String,
    );
  }
}

