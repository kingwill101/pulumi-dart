// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityhub_configuration_policy_association_configuration_policy_association_args_doc}
/// The set of arguments for ConfigurationPolicyAssociation.
/// {@endtemplate}
/// {@macro pulumi_securityhub_configuration_policy_association_configuration_policy_association_args_doc}
class ConfigurationPolicyAssociationArgs {
  /// The universally unique identifier (UUID) of the configuration policy, or `SELF_MANAGED_SECURITY_HUB` for a self-managed configuration.
  final pulumi.Input<String> policyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The identifier of the target account, organizational unit, or the root to associate with the specified configuration.
  final pulumi.Input<String> targetId;

  /// Creates a new [ConfigurationPolicyAssociationArgs].
  /// [policyId] The universally unique identifier (UUID) of the configuration policy, or `SELF_MANAGED_SECURITY_HUB` for a self-managed configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetId] The identifier of the target account, organizational unit, or the root to associate with the specified configuration.
  const ConfigurationPolicyAssociationArgs({
    required this.policyId,
    this.region,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyId': policyId,
      'region': ?region,
      'targetId': targetId,
    };
  }

  factory ConfigurationPolicyAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationPolicyAssociationArgs(
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
    );
  }
}
