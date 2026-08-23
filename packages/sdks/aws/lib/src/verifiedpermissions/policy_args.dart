// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_definition.dart';

/// {@template pulumi_verifiedpermissions_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_verifiedpermissions_policy_policy_args_doc}
class PolicyArgs {
  /// The definition of the policy. See Definition below.
  final pulumi.Input<PolicyDefinition> definition;
  /// The Policy Store ID of the policy store.
  final pulumi.Input<String> policyStoreId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [PolicyArgs].
  /// [definition] The definition of the policy. See Definition below.
  /// [policyStoreId] The Policy Store ID of the policy store.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const PolicyArgs({
    required this.definition,
    required this.policyStoreId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': pulumi.Input.mapInputValue<PolicyDefinition, Map<String, dynamic>>(definition, (value) => value.toMap()),
      'policyStoreId': policyStoreId,
      'region': ?region,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      definition: pulumi.Input.fromValue(PolicyDefinition.fromMap((map['definition']! as Map).cast<String, dynamic>())),
      policyStoreId: pulumi.Input.fromValue(map['policyStoreId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
