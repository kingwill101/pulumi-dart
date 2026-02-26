// ignore_for_file: unused_element, unnecessary_cast

class ApplicationIamIdentityCenterOptions {
  /// Specifies whether IAM Identity Center is enabled or disabled.
  final bool? enabled;
  final String? iamIdentityCenterApplicationArn;

  /// The Amazon Resource Name (ARN) of the IAM Identity Center instance. Must be between 20 and 2048 characters.
  final String? iamIdentityCenterInstanceArn;

  /// The ARN of the IAM role associated with the IAM Identity Center application. Must be between 20 and 2048 characters and match the pattern for IAM role ARNs.
  final String? iamRoleForIdentityCenterApplicationArn;

  ApplicationIamIdentityCenterOptions({
    this.enabled,
    this.iamIdentityCenterApplicationArn,
    this.iamIdentityCenterInstanceArn,
    this.iamRoleForIdentityCenterApplicationArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final iamIdentityCenterApplicationArnValue =
        iamIdentityCenterApplicationArn;
    if (iamIdentityCenterApplicationArnValue != null) {
      map['iamIdentityCenterApplicationArn'] =
          iamIdentityCenterApplicationArnValue;
    }
    final iamIdentityCenterInstanceArnValue = iamIdentityCenterInstanceArn;
    if (iamIdentityCenterInstanceArnValue != null) {
      map['iamIdentityCenterInstanceArn'] = iamIdentityCenterInstanceArnValue;
    }
    final iamRoleForIdentityCenterApplicationArnValue =
        iamRoleForIdentityCenterApplicationArn;
    if (iamRoleForIdentityCenterApplicationArnValue != null) {
      map['iamRoleForIdentityCenterApplicationArn'] =
          iamRoleForIdentityCenterApplicationArnValue;
    }
    return map;
  }

  factory ApplicationIamIdentityCenterOptions.fromMap(
      Map<String, dynamic> map) {
    return ApplicationIamIdentityCenterOptions(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      iamIdentityCenterApplicationArn:
          map['iamIdentityCenterApplicationArn'] == null
              ? null
              : map['iamIdentityCenterApplicationArn'] as String,
      iamIdentityCenterInstanceArn: map['iamIdentityCenterInstanceArn'] == null
          ? null
          : map['iamIdentityCenterInstanceArn'] as String,
      iamRoleForIdentityCenterApplicationArn:
          map['iamRoleForIdentityCenterApplicationArn'] == null
              ? null
              : map['iamRoleForIdentityCenterApplicationArn'] as String,
    );
  }
}
