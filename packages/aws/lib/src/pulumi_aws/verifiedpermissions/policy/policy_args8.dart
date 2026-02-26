// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../policy_definition/policy_definition.dart';

/// The set of arguments for Policy.
class PolicyArgs8 {
  /// The definition of the policy. See Definition below.
  final Input<PolicyDefinition> definition;

  /// The Policy Store ID of the policy store.
  final Input<String> policyStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  PolicyArgs8({
    required this.definition,
    required this.policyStoreId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['definition'] =
        Input.mapInputValue<PolicyDefinition, Map<String, dynamic>>(
            definition, (value) => value.toMap());
    map['policyStoreId'] = policyStoreId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory PolicyArgs8.fromMap(Map<String, dynamic> map) {
    return PolicyArgs8(
      definition: Input.asInput<PolicyDefinition>(map['definition']),
      policyStoreId: Input.asInput<String>(map['policyStoreId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
