// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resiliency_policy_policy.dart';
import 'resiliency_policy_timeouts.dart';

/// Input properties used for looking up and filtering ResiliencyPolicy resources.
class ResiliencyPolicyState {
  /// ARN of the Resiliency Policy.
  final pulumi.Input<String>? arn;
  /// Data Location Constraint of the Policy.
  /// Valid values are `AnyLocation`, `SameContinent`, and `SameCountry`.
  final pulumi.Input<String>? dataLocationConstraint;
  /// Description of Resiliency Policy.
  final pulumi.Input<String>? description;
  /// Estimated Cost Tier of the Resiliency Policy.
  final pulumi.Input<String>? estimatedCostTier;
  /// Name of Resiliency Policy.
  /// Must be between 2 and 60 characters long.
  /// Must start with an alphanumeric character and contain alphanumeric characters, underscores, or hyphens.
  final pulumi.Input<String>? name;
  /// The type of resiliency policy to be created, including the recovery time objective (RTO) and recovery point objective (RPO) in seconds. See `policy`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ResiliencyPolicyPolicy>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Resiliency Policy Tier.
  /// Valid values are `MissionCritical`, `Critical`, `Important`, `CoreServices`, `NonCritical`, and `NotApplicable`.
  final pulumi.Input<String>? tier;
  final pulumi.Input<ResiliencyPolicyTimeouts>? timeouts;

  /// Creates a new [ResiliencyPolicyState].
  /// [arn] ARN of the Resiliency Policy.
  /// [dataLocationConstraint] Data Location Constraint of the Policy.
  /// [description] Description of Resiliency Policy.
  /// [estimatedCostTier] Estimated Cost Tier of the Resiliency Policy.
  /// [name] Name of Resiliency Policy.
  /// [policy] The type of resiliency policy to be created, including the recovery time objective (RTO) and recovery point objective (RPO) in seconds. See `policy`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [tier] Resiliency Policy Tier.
  /// [timeouts] Optional.
  ResiliencyPolicyState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? dataLocationConstraint,
    pulumi.Output<String>? description,
    pulumi.Output<String>? estimatedCostTier,
    pulumi.Output<String>? name,
    pulumi.Output<ResiliencyPolicyPolicy>? policy,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? tier,
    pulumi.Output<ResiliencyPolicyTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      dataLocationConstraint = pulumi.Input.asOptionalInput<String>(dataLocationConstraint),
      description = pulumi.Input.asOptionalInput<String>(description),
      estimatedCostTier = pulumi.Input.asOptionalInput<String>(estimatedCostTier),
      name = pulumi.Input.asOptionalInput<String>(name),
      policy = pulumi.Input.asOptionalInput<ResiliencyPolicyPolicy>(policy),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      tier = pulumi.Input.asOptionalInput<String>(tier),
      timeouts = pulumi.Input.asOptionalInput<ResiliencyPolicyTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'dataLocationConstraint': ?dataLocationConstraint,
      'description': ?description,
      'estimatedCostTier': ?estimatedCostTier,
      'name': ?name,
      'policy': ?pulumi.Input.mapOptionalInputValue<ResiliencyPolicyPolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tier': ?tier,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ResiliencyPolicyTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ResiliencyPolicyState.fromMap(Map<String, dynamic> map) {
    return ResiliencyPolicyState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      dataLocationConstraint: map['dataLocationConstraint'] == null ? null : pulumi.Output.create<String>(map['dataLocationConstraint'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      estimatedCostTier: map['estimatedCostTier'] == null ? null : pulumi.Output.create<String>(map['estimatedCostTier'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<ResiliencyPolicyPolicy>(ResiliencyPolicyPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      tier: map['tier'] == null ? null : pulumi.Output.create<String>(map['tier'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ResiliencyPolicyTimeouts>(ResiliencyPolicyTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

