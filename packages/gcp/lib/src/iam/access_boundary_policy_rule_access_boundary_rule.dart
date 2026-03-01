// ignore_for_file: unused_element, unnecessary_cast

import 'access_boundary_policy_rule_access_boundary_rule_availability_condition.dart';

class AccessBoundaryPolicyRuleAccessBoundaryRule {
  /// The availability condition further constrains the access allowed by the access boundary rule.
  /// Structure is documented below.
  final AccessBoundaryPolicyRuleAccessBoundaryRuleAvailabilityCondition?
  availabilityCondition;

  /// A list of permissions that may be allowed for use on the specified resource.
  final List<String>? availablePermissions;

  /// The full resource name of a Google Cloud resource entity.
  final String? availableResource;

  /// Creates a new [AccessBoundaryPolicyRuleAccessBoundaryRule].
  /// [availabilityCondition] The availability condition further constrains the access allowed by the access boundary rule.
  /// [availablePermissions] A list of permissions that may be allowed for use on the specified resource.
  /// [availableResource] The full resource name of a Google Cloud resource entity.
  AccessBoundaryPolicyRuleAccessBoundaryRule({
    this.availabilityCondition,
    this.availablePermissions,
    this.availableResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityCondition': ?availabilityCondition == null
          ? null
          : availabilityCondition!.toMap(),
      'availablePermissions': ?availablePermissions,
      'availableResource': ?availableResource,
    };
  }

  factory AccessBoundaryPolicyRuleAccessBoundaryRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return AccessBoundaryPolicyRuleAccessBoundaryRule(
      availabilityCondition: map['availabilityCondition'] == null
          ? null
          : AccessBoundaryPolicyRuleAccessBoundaryRuleAvailabilityCondition.fromMap(
              (map['availabilityCondition'] as Map).cast<String, dynamic>(),
            ),
      availablePermissions: map['availablePermissions'] == null
          ? null
          : (map['availablePermissions'] as List).cast<String>(),
      availableResource: map['availableResource'] == null
          ? null
          : map['availableResource'] as String,
    );
  }
}
