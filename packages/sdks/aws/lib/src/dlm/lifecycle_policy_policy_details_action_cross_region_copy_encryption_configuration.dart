// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration {
  final pulumi.Input<String>? cmkArn;
  final pulumi.Input<bool>? encrypted;

  /// Creates a new [LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration].
  /// [cmkArn] Optional.
  /// [encrypted] Optional.
  LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration({
    this.cmkArn,
    this.encrypted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cmkArn': ?cmkArn,
      'encrypted': ?encrypted,
    };
  }

  factory LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration(
      cmkArn: map['cmkArn'] == null ? null : (map['cmkArn'] as String).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted'] as bool).input(),
    );
  }
}

