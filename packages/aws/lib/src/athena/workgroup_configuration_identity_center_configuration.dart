// ignore_for_file: unused_element, unnecessary_cast


class WorkgroupConfigurationIdentityCenterConfiguration {
  /// Specifies whether the workgroup is IAM Identity Center supported.
  final bool? enableIdentityCenter;
  /// The IAM Identity Center instance ARN that the workgroup associates to.
  final String? identityCenterInstanceArn;

  /// Creates a new [WorkgroupConfigurationIdentityCenterConfiguration].
  /// [enableIdentityCenter] Specifies whether the workgroup is IAM Identity Center supported.
  /// [identityCenterInstanceArn] The IAM Identity Center instance ARN that the workgroup associates to.
  WorkgroupConfigurationIdentityCenterConfiguration({
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
      enableIdentityCenter: map['enableIdentityCenter'] == null ? null : map['enableIdentityCenter'] as bool,
      identityCenterInstanceArn: map['identityCenterInstanceArn'] == null ? null : map['identityCenterInstanceArn'] as String,
    );
  }
}

