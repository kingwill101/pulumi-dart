// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resiliency_policy_policy.dart';
import 'resiliency_policy_timeouts.dart';

/// {@template pulumi_resiliencehub_resiliency_policy_resiliency_policy_args_doc}
/// The set of arguments for ResiliencyPolicy.
/// {@endtemplate}
/// {@macro pulumi_resiliencehub_resiliency_policy_resiliency_policy_args_doc}
class ResiliencyPolicyArgs {
  /// Data Location Constraint of the Policy.
  /// Valid values are `AnyLocation`, `SameContinent`, and `SameCountry`.
  final pulumi.Input<String>? dataLocationConstraint;

  /// Description of Resiliency Policy.
  final pulumi.Input<String>? description;

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

  /// Resiliency Policy Tier.
  /// Valid values are `MissionCritical`, `Critical`, `Important`, `CoreServices`, `NonCritical`, and `NotApplicable`.
  final pulumi.Input<String> tier;
  final pulumi.Input<ResiliencyPolicyTimeouts>? timeouts;

  /// Creates a new [ResiliencyPolicyArgs].
  /// [dataLocationConstraint] Data Location Constraint of the Policy.
  /// [description] Description of Resiliency Policy.
  /// [name] Name of Resiliency Policy.
  /// [policy] The type of resiliency policy to be created, including the recovery time objective (RTO) and recovery point objective (RPO) in seconds. See `policy`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tier] Resiliency Policy Tier.
  /// [timeouts] Optional.
  ResiliencyPolicyArgs({
    String? dataLocationConstraint,
    String? description,
    String? name,
    ResiliencyPolicyPolicy? policy,
    String? region,
    Map<String, String>? tags,
    required String tier,
    ResiliencyPolicyTimeouts? timeouts,
  }) : dataLocationConstraint = pulumi.Input.asOptionalInput<String>(
         dataLocationConstraint,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       name = pulumi.Input.asOptionalInput<String>(name),
       policy = pulumi.Input.asOptionalInput<ResiliencyPolicyPolicy>(policy),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       tier = pulumi.Input.asInput<String>(tier),
       timeouts = pulumi.Input.asOptionalInput<ResiliencyPolicyTimeouts>(
         timeouts,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLocationConstraint': ?dataLocationConstraint,
      'description': ?description,
      'name': ?name,
      'policy':
          ?pulumi.Input.mapOptionalInputValue<
            ResiliencyPolicyPolicy,
            Map<String, dynamic>
          >(policy, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tier': tier,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            ResiliencyPolicyTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory ResiliencyPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ResiliencyPolicyArgs(
      dataLocationConstraint: map['dataLocationConstraint'] == null
          ? null
          : map['dataLocationConstraint'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      policy: map['policy'] == null
          ? null
          : ResiliencyPolicyPolicy.fromMap(
              (map['policy'] as Map).cast<String, dynamic>(),
            ),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      tier: map['tier'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : ResiliencyPolicyTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
