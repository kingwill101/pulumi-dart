// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_policy_details_action_cross_region_copy_encryption_configuration.dart';
import 'lifecycle_policy_policy_details_action_cross_region_copy_retain_rule.dart';

class LifecyclePolicyPolicyDetailsActionCrossRegionCopy {
  /// The encryption settings for the copied snapshot. See the `encryption_configuration` block. Max of 1 per action.
  final pulumi.Input<LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration> encryptionConfiguration;
  final pulumi.Input<LifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRule>? retainRule;
  final pulumi.Input<String> target;

  /// Creates a new [LifecyclePolicyPolicyDetailsActionCrossRegionCopy].
  /// [encryptionConfiguration] The encryption settings for the copied snapshot. See the `encryption_configuration` block. Max of 1 per action.
  /// [retainRule] Optional.
  /// [target] Required.
  LifecyclePolicyPolicyDetailsActionCrossRegionCopy({
    required this.encryptionConfiguration,
    this.retainRule,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionConfiguration': pulumi.Input.mapInputValue<LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'retainRule': ?pulumi.Input.mapOptionalInputValue<LifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRule, Map<String, dynamic>>(retainRule, (value) => value.toMap()),
      'target': target,
    };
  }

  factory LifecyclePolicyPolicyDetailsActionCrossRegionCopy.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsActionCrossRegionCopy(
      encryptionConfiguration: (LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration.fromMap((map['encryptionConfiguration'] as Map).cast<String, dynamic>())).input(),
      retainRule: map['retainRule'] == null ? null : (LifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRule.fromMap((map['retainRule'] as Map).cast<String, dynamic>())).input(),
      target: (map['target'] as String).input(),
    );
  }
}

