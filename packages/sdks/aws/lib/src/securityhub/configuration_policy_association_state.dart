// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ConfigurationPolicyAssociation resources.
class ConfigurationPolicyAssociationState {
  /// The universally unique identifier (UUID) of the configuration policy.
  final pulumi.Input<String>? policyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The identifier of the target account, organizational unit, or the root to associate with the specified configuration.
  final pulumi.Input<String>? targetId;

  /// Creates a new [ConfigurationPolicyAssociationState].
  /// [policyId] The universally unique identifier (UUID) of the configuration policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetId] The identifier of the target account, organizational unit, or the root to associate with the specified configuration.
  ConfigurationPolicyAssociationState({
    this.policyId,
    this.region,
    this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyId': ?policyId,
      'region': ?region,
      'targetId': ?targetId,
    };
  }

  factory ConfigurationPolicyAssociationState.fromMap(Map<String, dynamic> map) {
    return ConfigurationPolicyAssociationState(
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetId: (() { final guardedValue = map['targetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

