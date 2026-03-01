// ignore_for_file: unused_element, unnecessary_cast

import 'lifecycle_policy_policy_details_action_cross_region_copy_encryption_configuration.dart';
import 'lifecycle_policy_policy_details_action_cross_region_copy_retain_rule.dart';

class LifecyclePolicyPolicyDetailsActionCrossRegionCopy {
  /// The encryption settings for the copied snapshot. See the `encryption_configuration` block. Max of 1 per action.
  final LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration
  encryptionConfiguration;
  final LifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRule? retainRule;
  final String target;

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
      'encryptionConfiguration': encryptionConfiguration.toMap(),
      'retainRule': ?retainRule == null ? null : retainRule!.toMap(),
      'target': target,
    };
  }

  factory LifecyclePolicyPolicyDetailsActionCrossRegionCopy.fromMap(
    Map<String, dynamic> map,
  ) {
    return LifecyclePolicyPolicyDetailsActionCrossRegionCopy(
      encryptionConfiguration:
          LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration.fromMap(
            (map['encryptionConfiguration'] as Map).cast<String, dynamic>(),
          ),
      retainRule: map['retainRule'] == null
          ? null
          : LifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRule.fromMap(
              (map['retainRule'] as Map).cast<String, dynamic>(),
            ),
      target: map['target'] as String,
    );
  }
}
