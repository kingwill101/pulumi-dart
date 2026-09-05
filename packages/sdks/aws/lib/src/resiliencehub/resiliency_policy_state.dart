// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resiliency_policy_policy.dart';
import 'resiliency_policy_timeouts.dart';

/// Input properties used for looking up and filtering ResiliencyPolicy resources.
class ResiliencyPolicyState {
  /// ARN of the Resiliency Policy.
  final pulumi.Input<String?>? arn;
  /// Data Location Constraint of the Policy.
  /// Valid values are `AnyLocation`, `SameContinent`, and `SameCountry`.
  final pulumi.Input<String?>? dataLocationConstraint;
  /// Description of Resiliency Policy.
  final pulumi.Input<String?>? description;
  /// Estimated Cost Tier of the Resiliency Policy.
  final pulumi.Input<String?>? estimatedCostTier;
  /// Name of Resiliency Policy.
  /// Must be between 2 and 60 characters long.
  /// Must start with an alphanumeric character and contain alphanumeric characters, underscores, or hyphens.
  final pulumi.Input<String?>? name;
  /// The type of resiliency policy to be created, including the recovery time objective (RTO) and recovery point objective (RPO) in seconds. See `policy`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ResiliencyPolicyPolicy?>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Resiliency Policy Tier.
  /// Valid values are `MissionCritical`, `Critical`, `Important`, `CoreServices`, `NonCritical`, and `NotApplicable`.
  final pulumi.Input<String?>? tier;
  final pulumi.Input<ResiliencyPolicyTimeouts?>? timeouts;

  /// Creates a new [ResiliencyPolicyState].
  /// [arn] ARN of the Resiliency Policy.
  /// [dataLocationConstraint] Data Location Constraint of the Policy.
  /// [description] Description of Resiliency Policy.
  /// [estimatedCostTier] Estimated Cost Tier of the Resiliency Policy.
  /// [name] Name of Resiliency Policy.
  /// [policy] The type of resiliency policy to be created, including the recovery time objective (RTO) and recovery point objective (RPO) in seconds. See `policy`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [tier] Resiliency Policy Tier.
  /// [timeouts] Optional.
  const ResiliencyPolicyState({
    this.arn,
    this.dataLocationConstraint,
    this.description,
    this.estimatedCostTier,
    this.name,
    this.policy,
    this.region,
    this.tags,
    this.tagsAll,
    this.tier,
    this.timeouts,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataLocationConstraint: (() { final guardedValue = map['dataLocationConstraint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      estimatedCostTier: (() { final guardedValue = map['estimatedCostTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResiliencyPolicyPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResiliencyPolicyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
