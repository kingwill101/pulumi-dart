// ignore_for_file: unused_element, unnecessary_cast

class ApplicationIamIdentityCenterOptions {
  /// Specifies whether IAM Identity Center is enabled or disabled.
  final bool? enabled;
  final String? iamIdentityCenterApplicationArn;

  /// The Amazon Resource Name (ARN) of the IAM Identity Center instance. Must be between 20 and 2048 characters.
  final String? iamIdentityCenterInstanceArn;

  /// The ARN of the IAM role associated with the IAM Identity Center application. Must be between 20 and 2048 characters and match the pattern for IAM role ARNs.
  final String? iamRoleForIdentityCenterApplicationArn;

  /// Creates a new [ApplicationIamIdentityCenterOptions].
  /// [enabled] Specifies whether IAM Identity Center is enabled or disabled.
  /// [iamIdentityCenterApplicationArn] Optional.
  /// [iamIdentityCenterInstanceArn] The Amazon Resource Name (ARN) of the IAM Identity Center instance. Must be between 20 and 2048 characters.
  /// [iamRoleForIdentityCenterApplicationArn] The ARN of the IAM role associated with the IAM Identity Center application. Must be between 20 and 2048 characters and match the pattern for IAM role ARNs.
  ApplicationIamIdentityCenterOptions({
    this.enabled,
    this.iamIdentityCenterApplicationArn,
    this.iamIdentityCenterInstanceArn,
    this.iamRoleForIdentityCenterApplicationArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'iamIdentityCenterApplicationArn': ?iamIdentityCenterApplicationArn,
      'iamIdentityCenterInstanceArn': ?iamIdentityCenterInstanceArn,
      'iamRoleForIdentityCenterApplicationArn':
          ?iamRoleForIdentityCenterApplicationArn,
    };
  }

  factory ApplicationIamIdentityCenterOptions.fromMap(
    Map<String, dynamic> map,
  ) {
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
