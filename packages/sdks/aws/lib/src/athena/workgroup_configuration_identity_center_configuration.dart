// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkgroupConfigurationIdentityCenterConfiguration {
  /// Specifies whether the workgroup is IAM Identity Center supported.
  final pulumi.Input<bool>? enableIdentityCenter;
  /// The IAM Identity Center instance ARN that the workgroup associates to.
  final pulumi.Input<String>? identityCenterInstanceArn;

  /// Creates a new [WorkgroupConfigurationIdentityCenterConfiguration].
  /// [enableIdentityCenter] Specifies whether the workgroup is IAM Identity Center supported.
  /// [identityCenterInstanceArn] The IAM Identity Center instance ARN that the workgroup associates to.
  const WorkgroupConfigurationIdentityCenterConfiguration({
    this.enableIdentityCenter,
    this.identityCenterInstanceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableIdentityCenter': ?enableIdentityCenter,
      'identityCenterInstanceArn': ?identityCenterInstanceArn,
    };
  }

  factory WorkgroupConfigurationIdentityCenterConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkgroupConfigurationIdentityCenterConfiguration(
      enableIdentityCenter: (() { final guardedValue = map['enableIdentityCenter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identityCenterInstanceArn: (() { final guardedValue = map['identityCenterInstanceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

