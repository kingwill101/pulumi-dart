// ignore_for_file: unused_element, unnecessary_cast

class LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration {
  final String? cmkArn;
  final bool? encrypted;

  LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration({
    this.cmkArn,
    this.encrypted,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cmkArnValue = cmkArn;
    if (cmkArnValue != null) {
      map['cmkArn'] = cmkArnValue;
    }
    final encryptedValue = encrypted;
    if (encryptedValue != null) {
      map['encrypted'] = encryptedValue;
    }
    return map;
  }

  factory LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration(
      cmkArn: map['cmkArn'] == null ? null : map['cmkArn'] as String,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
    );
  }
}
