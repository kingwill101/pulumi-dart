// ignore_for_file: unused_element, unnecessary_cast


class WebAppIdentityProviderDetailsIdentityCenterConfig {
  final String? applicationArn;
  /// ARN of the IAM Identity Center used for the web app.
  final String? instanceArn;
  /// ARN of an identity bearer role for your web app.
  final String? role;

  /// Creates a new [WebAppIdentityProviderDetailsIdentityCenterConfig].
  /// [applicationArn] Optional.
  /// [instanceArn] ARN of the IAM Identity Center used for the web app.
  /// [role] ARN of an identity bearer role for your web app.
  WebAppIdentityProviderDetailsIdentityCenterConfig({
    this.applicationArn,
    this.instanceArn,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': ?applicationArn,
      'instanceArn': ?instanceArn,
      'role': ?role,
    };
  }

  factory WebAppIdentityProviderDetailsIdentityCenterConfig.fromMap(Map<String, dynamic> map) {
    return WebAppIdentityProviderDetailsIdentityCenterConfig(
      applicationArn: map['applicationArn'] == null ? null : map['applicationArn'] as String,
      instanceArn: map['instanceArn'] == null ? null : map['instanceArn'] as String,
      role: map['role'] == null ? null : map['role'] as String,
    );
  }
}

