// ignore_for_file: unused_element, unnecessary_cast


class GetAccessConfigurationsConfigurationPermissionPolicy {
  /// The Creation time of policy.
  final String addTime;
  /// The Content of Policy.
  final String permissionPolicyDocument;
  /// The Policy Name of policy.
  final String permissionPolicyName;
  /// The Policy Type of policy. Valid values: `System`, `Inline`.
  final String permissionPolicyType;

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
      addTime: map['addTime'] as String,
      permissionPolicyDocument: map['permissionPolicyDocument'] as String,
      permissionPolicyName: map['permissionPolicyName'] as String,
      permissionPolicyType: map['permissionPolicyType'] as String,
    );
  }
}

