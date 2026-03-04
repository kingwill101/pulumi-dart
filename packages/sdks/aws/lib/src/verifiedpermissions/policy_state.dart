// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_definition.dart';

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// The date the policy was created.
  final pulumi.Input<String>? createdDate;

  /// The definition of the policy. See Definition below.
  final pulumi.Input<PolicyDefinition>? definition;

  /// The Policy ID of the policy.
  final pulumi.Input<String>? policyId;

  /// The Policy Store ID of the policy store.
  final pulumi.Input<String>? policyStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [PolicyState].
  /// [createdDate] The date the policy was created.
  /// [definition] The definition of the policy. See Definition below.
  /// [policyId] The Policy ID of the policy.
  /// [policyStoreId] The Policy Store ID of the policy store.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  PolicyState({
    this.createdDate,
    this.definition,
    this.policyId,
    this.policyStoreId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdDate': ?createdDate,
      'definition':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyDefinition,
            Map<String, dynamic>
          >(definition, (value) => value.toMap()),
      'policyId': ?policyId,
      'policyStoreId': ?policyStoreId,
      'region': ?region,
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      createdDate: (() {
        final guardedValue = map['createdDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      definition: (() {
        final guardedValue = map['definition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PolicyDefinition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      policyId: (() {
        final guardedValue = map['policyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyStoreId: (() {
        final guardedValue = map['policyStoreId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
