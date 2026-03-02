// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduling_policy_fair_share_policy.dart';

/// Input properties used for looking up and filtering SchedulingPolicy resources.
class SchedulingPolicyState {
  /// The Amazon Resource Name of the scheduling policy.
  final pulumi.Input<String>? arn;
  final pulumi.Input<SchedulingPolicyFairSharePolicy>? fairSharePolicy;
  /// Specifies the name of the scheduling policy.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [SchedulingPolicyState].
  /// [arn] The Amazon Resource Name of the scheduling policy.
  /// [fairSharePolicy] Optional.
  /// [name] Specifies the name of the scheduling policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  SchedulingPolicyState({
    this.arn,
    this.fairSharePolicy,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'fairSharePolicy': ?pulumi.Input.mapOptionalInputValue<SchedulingPolicyFairSharePolicy, Map<String, dynamic>>(fairSharePolicy, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory SchedulingPolicyState.fromMap(Map<String, dynamic> map) {
    return SchedulingPolicyState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      fairSharePolicy: map['fairSharePolicy'] == null ? null : ((SchedulingPolicyFairSharePolicy.fromMap((map['fairSharePolicy']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

