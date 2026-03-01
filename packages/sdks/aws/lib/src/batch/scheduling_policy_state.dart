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
    pulumi.Output<String>? arn,
    pulumi.Output<SchedulingPolicyFairSharePolicy>? fairSharePolicy,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      fairSharePolicy = pulumi.Input.asOptionalInput<SchedulingPolicyFairSharePolicy>(fairSharePolicy),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      fairSharePolicy: map['fairSharePolicy'] == null ? null : pulumi.Output.create<SchedulingPolicyFairSharePolicy>(SchedulingPolicyFairSharePolicy.fromMap((map['fairSharePolicy'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

