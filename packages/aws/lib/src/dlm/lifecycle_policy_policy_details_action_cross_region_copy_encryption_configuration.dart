// ignore_for_file: unused_element, unnecessary_cast

class LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration {
  final String? cmkArn;
  final bool? encrypted;

  /// Creates a new [LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration].
  /// [cmkArn] Optional.
  /// [encrypted] Optional.
  LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration({
    this.cmkArn,
    this.encrypted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cmkArn': ?cmkArn, 'encrypted': ?encrypted};
  }

  factory LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration(
      cmkArn: map['cmkArn'] == null ? null : map['cmkArn'] as String,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
    );
  }
}
