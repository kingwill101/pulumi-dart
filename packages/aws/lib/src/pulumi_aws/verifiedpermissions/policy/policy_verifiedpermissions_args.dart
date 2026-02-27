// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../policy_definition/policy_definition.dart';

/// The set of arguments for Policy.
class PolicyVerifiedpermissionsArgs {
  /// The definition of the policy. See Definition below.
  final pulumi.Input<PolicyDefinition> definition;

  /// The Policy Store ID of the policy store.
  final pulumi.Input<String> policyStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  PolicyVerifiedpermissionsArgs({
    required this.definition,
    required this.policyStoreId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['definition'] =
        pulumi.Input.mapInputValue<PolicyDefinition, Map<String, dynamic>>(
            definition, (value) => value.toMap());
    map['policyStoreId'] = policyStoreId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory PolicyVerifiedpermissionsArgs.fromMap(Map<String, dynamic> map) {
    return PolicyVerifiedpermissionsArgs(
      definition: pulumi.Input.asInput<PolicyDefinition>(map['definition']),
      policyStoreId: pulumi.Input.asInput<String>(map['policyStoreId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
