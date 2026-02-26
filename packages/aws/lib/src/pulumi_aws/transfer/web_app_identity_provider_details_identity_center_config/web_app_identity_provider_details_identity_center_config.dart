// ignore_for_file: unused_element, unnecessary_cast

class WebAppIdentityProviderDetailsIdentityCenterConfig {
  final String? applicationArn;

  /// ARN of the IAM Identity Center used for the web app.
  final String? instanceArn;

  /// ARN of an identity bearer role for your web app.
  final String? role;

  WebAppIdentityProviderDetailsIdentityCenterConfig({
    this.applicationArn,
    this.instanceArn,
    this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applicationArnValue = applicationArn;
    if (applicationArnValue != null) {
      map['applicationArn'] = applicationArnValue;
    }
    final instanceArnValue = instanceArn;
    if (instanceArnValue != null) {
      map['instanceArn'] = instanceArnValue;
    }
    final roleValue = role;
    if (roleValue != null) {
      map['role'] = roleValue;
    }
    return map;
  }

  factory WebAppIdentityProviderDetailsIdentityCenterConfig.fromMap(
      Map<String, dynamic> map) {
    return WebAppIdentityProviderDetailsIdentityCenterConfig(
      applicationArn: map['applicationArn'] == null
          ? null
          : map['applicationArn'] as String,
      instanceArn:
          map['instanceArn'] == null ? null : map['instanceArn'] as String,
      role: map['role'] == null ? null : map['role'] as String,
    );
  }
}
