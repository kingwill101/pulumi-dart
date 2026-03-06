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
  const WebAppIdentityProviderDetailsIdentityCenterConfig({
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
      applicationArn: (() { final guardedValue = map['applicationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceArn: (() { final guardedValue = map['instanceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

