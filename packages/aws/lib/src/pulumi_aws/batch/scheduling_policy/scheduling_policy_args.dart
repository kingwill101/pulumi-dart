// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../scheduling_policy_fair_share_policy/scheduling_policy_fair_share_policy.dart';

/// The set of arguments for SchedulingPolicy.
class SchedulingPolicyArgs {
  final Input<SchedulingPolicyFairSharePolicy>? fairSharePolicy;

  /// Specifies the name of the scheduling policy.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  SchedulingPolicyArgs({
    this.fairSharePolicy,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fairSharePolicyValue = fairSharePolicy;
    if (fairSharePolicyValue != null) {
      map['fairSharePolicy'] = Input.mapOptionalInputValue<
          SchedulingPolicyFairSharePolicy,
          Map<String, dynamic>>(fairSharePolicyValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory SchedulingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SchedulingPolicyArgs(
      fairSharePolicy: Input.asOptionalInput<SchedulingPolicyFairSharePolicy>(
          map['fairSharePolicy']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
