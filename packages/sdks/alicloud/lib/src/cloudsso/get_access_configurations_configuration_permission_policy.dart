// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccessConfigurationsConfigurationPermissionPolicy {
  /// The Creation time of policy.
  final pulumi.Input<String> addTime;
  /// The Content of Policy.
  final pulumi.Input<String> permissionPolicyDocument;
  /// The Policy Name of policy.
  final pulumi.Input<String> permissionPolicyName;
  /// The Policy Type of policy. Valid values: `System`, `Inline`.
  final pulumi.Input<String> permissionPolicyType;

  /// Creates a new [GetAccessConfigurationsConfigurationPermissionPolicy].
  /// [addTime] The Creation time of policy.
  /// [permissionPolicyDocument] The Content of Policy.
  /// [permissionPolicyName] The Policy Name of policy.
  /// [permissionPolicyType] The Policy Type of policy. Valid values: `System`, `Inline`.
  GetAccessConfigurationsConfigurationPermissionPolicy({
    required this.addTime,
    required this.permissionPolicyDocument,
    required this.permissionPolicyName,
    required this.permissionPolicyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addTime': addTime,
      'permissionPolicyDocument': permissionPolicyDocument,
      'permissionPolicyName': permissionPolicyName,
      'permissionPolicyType': permissionPolicyType,
    };
  }

  factory GetAccessConfigurationsConfigurationPermissionPolicy.fromMap(Map<String, dynamic> map) {
    return GetAccessConfigurationsConfigurationPermissionPolicy(
      addTime: pulumi.Input.fromValue(map['addTime'] as String),
      permissionPolicyDocument: pulumi.Input.fromValue(map['permissionPolicyDocument'] as String),
      permissionPolicyName: pulumi.Input.fromValue(map['permissionPolicyName'] as String),
      permissionPolicyType: pulumi.Input.fromValue(map['permissionPolicyType'] as String),
    );
  }
}

