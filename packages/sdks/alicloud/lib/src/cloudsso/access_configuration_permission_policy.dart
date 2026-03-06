// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessConfigurationPermissionPolicy {
  /// The configurations of the inline policy. **NOTE:** If `permission_policy_type` is set to `Inline`, `permission_policy_document` is required.
  final pulumi.Input<String>? permissionPolicyDocument;
  /// The name of the policy.
  final pulumi.Input<String> permissionPolicyName;
  /// The type of the policy. Valid values: `System`, `Inline`.
  final pulumi.Input<String> permissionPolicyType;

  /// Creates a new [AccessConfigurationPermissionPolicy].
  /// [permissionPolicyDocument] The configurations of the inline policy. **NOTE:** If `permission_policy_type` is set to `Inline`, `permission_policy_document` is required.
  /// [permissionPolicyName] The name of the policy.
  /// [permissionPolicyType] The type of the policy. Valid values: `System`, `Inline`.
  const AccessConfigurationPermissionPolicy({
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
      permissionPolicyDocument: (() { final guardedValue = map['permissionPolicyDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissionPolicyName: pulumi.Input.fromValue(map['permissionPolicyName'] as String),
      permissionPolicyType: pulumi.Input.fromValue(map['permissionPolicyType'] as String),
    );
  }
}

