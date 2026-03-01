// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_group_policy_assignment_override_selector.dart';

class ResourceGroupPolicyAssignmentOverride {
  /// One or more `override_selector` block as defined below.
  final List<ResourceGroupPolicyAssignmentOverrideSelector>? selectors;
  /// Specifies the value to override the policy property. Possible values for `policyEffect` override listed [policy effects](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/effects).
  final String value;

  /// Creates a new [ResourceGroupPolicyAssignmentOverride].
  /// [selectors] One or more `override_selector` block as defined below.
  /// [value] Specifies the value to override the policy property. Possible values for `policyEffect` override listed [policy effects](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/effects).
  ResourceGroupPolicyAssignmentOverride({
    this.selectors,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectors': ?selectors == null ? null : pulumi.Input.encodeList<ResourceGroupPolicyAssignmentOverrideSelector, Map<String, dynamic>>(selectors!, (value) => value.toMap()),
      'value': value,
    };
  }

  factory ResourceGroupPolicyAssignmentOverride.fromMap(Map<String, dynamic> map) {
    return ResourceGroupPolicyAssignmentOverride(
      selectors: map['selectors'] == null ? null : pulumi.Input.decodeList<ResourceGroupPolicyAssignmentOverrideSelector>(map['selectors'], (value) => ResourceGroupPolicyAssignmentOverrideSelector.fromMap((value as Map).cast<String, dynamic>())),
      value: map['value'] as String,
    );
  }
}

