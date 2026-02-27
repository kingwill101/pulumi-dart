// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../resiliency_policy_policy/resiliency_policy_policy.dart';
import '../resiliency_policy_timeouts/resiliency_policy_timeouts.dart';

/// The set of arguments for ResiliencyPolicy.
class ResiliencyPolicyArgs {
  /// Data Location Constraint of the Policy.
  /// Valid values are `AnyLocation`, `SameContinent`, and `SameCountry`.
  final Input<String>? dataLocationConstraint;

  /// Description of Resiliency Policy.
  final Input<String>? description;

  /// Name of Resiliency Policy.
  /// Must be between 2 and 60 characters long.
  /// Must start with an alphanumeric character and contain alphanumeric characters, underscores, or hyphens.
  final Input<String>? name;

  /// The type of resiliency policy to be created, including the recovery time objective (RTO) and recovery point objective (RPO) in seconds. See `policy`.
  ///
  /// The following arguments are optional:
  final Input<ResiliencyPolicyPolicy>? policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Resiliency Policy Tier.
  /// Valid values are `MissionCritical`, `Critical`, `Important`, `CoreServices`, `NonCritical`, and `NotApplicable`.
  final Input<String> tier;
  final Input<ResiliencyPolicyTimeouts>? timeouts;

  ResiliencyPolicyArgs({
    this.dataLocationConstraint,
    this.description,
    this.name,
    this.policy,
    this.region,
    this.tags,
    required this.tier,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataLocationConstraintValue = dataLocationConstraint;
    if (dataLocationConstraintValue != null) {
      map['dataLocationConstraint'] = dataLocationConstraintValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = Input.mapOptionalInputValue<ResiliencyPolicyPolicy,
          Map<String, dynamic>>(policyValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['tier'] = tier;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<ResiliencyPolicyTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResiliencyPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ResiliencyPolicyArgs(
      dataLocationConstraint:
          Input.asOptionalInput<String>(map['dataLocationConstraint']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      policy: Input.asOptionalInput<ResiliencyPolicyPolicy>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      tier: Input.asInput<String>(map['tier']),
      timeouts:
          Input.asOptionalInput<ResiliencyPolicyTimeouts>(map['timeouts']),
    );
  }
}
