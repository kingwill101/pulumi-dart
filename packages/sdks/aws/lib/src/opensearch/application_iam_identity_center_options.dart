// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationIamIdentityCenterOptions {
  /// Specifies whether IAM Identity Center is enabled or disabled.
  final pulumi.Input<bool>? enabled;
  final pulumi.Input<String>? iamIdentityCenterApplicationArn;
  /// The Amazon Resource Name (ARN) of the IAM Identity Center instance. Must be between 20 and 2048 characters.
  final pulumi.Input<String>? iamIdentityCenterInstanceArn;
  /// The ARN of the IAM role associated with the IAM Identity Center application. Must be between 20 and 2048 characters and match the pattern for IAM role ARNs.
  final pulumi.Input<String>? iamRoleForIdentityCenterApplicationArn;

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
      'iamRoleForIdentityCenterApplicationArn': ?iamRoleForIdentityCenterApplicationArn,
    };
  }

  factory ApplicationIamIdentityCenterOptions.fromMap(Map<String, dynamic> map) {
    return ApplicationIamIdentityCenterOptions(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      iamIdentityCenterApplicationArn: (() { final guardedValue = map['iamIdentityCenterApplicationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamIdentityCenterInstanceArn: (() { final guardedValue = map['iamIdentityCenterInstanceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamRoleForIdentityCenterApplicationArn: (() { final guardedValue = map['iamRoleForIdentityCenterApplicationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

