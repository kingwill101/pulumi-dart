// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAppIdentityProviderDetailsIdentityCenterConfig {
  final pulumi.Input<String>? applicationArn;
  /// ARN of the IAM Identity Center used for the web app.
  final pulumi.Input<String>? instanceArn;
  /// ARN of an identity bearer role for your web app.
  final pulumi.Input<String>? role;

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
      applicationArn: map['applicationArn'] == null ? null : (map['applicationArn'] as String).input(),
      instanceArn: map['instanceArn'] == null ? null : (map['instanceArn'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
    );
  }
}

