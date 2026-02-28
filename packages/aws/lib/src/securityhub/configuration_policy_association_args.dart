// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityhub_configuration_policy_association_configuration_policy_association_args_doc}
/// The set of arguments for ConfigurationPolicyAssociation.
/// {@endtemplate}
/// {@macro pulumi_securityhub_configuration_policy_association_configuration_policy_association_args_doc}
class ConfigurationPolicyAssociationArgs {
  /// The universally unique identifier (UUID) of the configuration policy.
  final pulumi.Input<String> policyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The identifier of the target account, organizational unit, or the root to associate with the specified configuration.
  final pulumi.Input<String> targetId;

  /// Creates a new [ConfigurationPolicyAssociationArgs].
  /// [policyId] The universally unique identifier (UUID) of the configuration policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetId] The identifier of the target account, organizational unit, or the root to associate with the specified configuration.
  ConfigurationPolicyAssociationArgs({
    required String policyId,
    String? region,
    required String targetId,
  })  : policyId = pulumi.Input.asInput<String>(policyId),
        region = pulumi.Input.asOptionalInput<String>(region),
        targetId = pulumi.Input.asInput<String>(targetId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyId'] = policyId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['targetId'] = targetId;
    return map;
  }

  factory ConfigurationPolicyAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationPolicyAssociationArgs(
      policyId: map['policyId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      targetId: map['targetId'] as String,
    );
  }
}
