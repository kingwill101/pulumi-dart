// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ConfigurationPolicyAssociation.
class ConfigurationPolicyAssociationArgs {
  /// The universally unique identifier (UUID) of the configuration policy.
  final Input<String> policyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The identifier of the target account, organizational unit, or the root to associate with the specified configuration.
  final Input<String> targetId;

  ConfigurationPolicyAssociationArgs({
    required this.policyId,
    this.region,
    required this.targetId,
  });

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
      policyId: Input.asInput<String>(map['policyId']),
      region: Input.asOptionalInput<String>(map['region']),
      targetId: Input.asInput<String>(map['targetId']),
    );
  }
}
