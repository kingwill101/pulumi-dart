// ignore_for_file: unused_element, unnecessary_cast


class AccessConfigurationPermissionPolicy {
  /// The configurations of the inline policy. **NOTE:** If `permission_policy_type` is set to `Inline`, `permission_policy_document` is required.
  final String? permissionPolicyDocument;
  /// The name of the policy.
  final String permissionPolicyName;
  /// The type of the policy. Valid values: `System`, `Inline`.
  final String permissionPolicyType;

  /// Creates a new [AccessConfigurationPermissionPolicy].
  /// [permissionPolicyDocument] The configurations of the inline policy. **NOTE:** If `permission_policy_type` is set to `Inline`, `permission_policy_document` is required.
  /// [permissionPolicyName] The name of the policy.
  /// [permissionPolicyType] The type of the policy. Valid values: `System`, `Inline`.
  AccessConfigurationPermissionPolicy({
    this.permissionPolicyDocument,
    required this.permissionPolicyName,
    required this.permissionPolicyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissionPolicyDocument': ?permissionPolicyDocument,
      'permissionPolicyName': permissionPolicyName,
      'permissionPolicyType': permissionPolicyType,
    };
  }

  factory AccessConfigurationPermissionPolicy.fromMap(Map<String, dynamic> map) {
    return AccessConfigurationPermissionPolicy(
      permissionPolicyDocument: map['permissionPolicyDocument'] == null ? null : map['permissionPolicyDocument'] as String,
      permissionPolicyName: map['permissionPolicyName'] as String,
      permissionPolicyType: map['permissionPolicyType'] as String,
    );
  }
}

