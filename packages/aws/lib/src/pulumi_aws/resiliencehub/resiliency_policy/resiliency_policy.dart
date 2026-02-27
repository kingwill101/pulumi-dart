import 'package:pulumi/pulumi.dart';
import '../resiliency_policy_policy/resiliency_policy_policy.dart';
import '../resiliency_policy_timeouts/resiliency_policy_timeouts.dart';
import 'resiliency_policy_args.dart';

/// Resource for managing an AWS Resilience Hub Resiliency Policy.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Resilience Hub Resiliency Policy using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:resiliencehub/resiliencyPolicy:ResiliencyPolicy example arn:aws:resiliencehub:us-east-1:123456789012:resiliency-policy/8c1cfa29-d1dd-4421-aa68-c9f64cced4c2
/// ```
class ResiliencyPolicy extends CustomResource {
  /// ARN of the Resiliency Policy.
  late final Output<String> arn;

  /// Data Location Constraint of the Policy.
  /// Valid values are `AnyLocation`, `SameContinent`, and `SameCountry`.
  late final Output<String> dataLocationConstraint;

  /// Description of Resiliency Policy.
  late final Output<String?> description;

  /// Estimated Cost Tier of the Resiliency Policy.
  late final Output<String> estimatedCostTier;

  /// Name of Resiliency Policy.
  /// Must be between 2 and 60 characters long.
  /// Must start with an alphanumeric character and contain alphanumeric characters, underscores, or hyphens.
  late final Output<String> name;

  /// The type of resiliency policy to be created, including the recovery time objective (RTO) and recovery point objective (RPO) in seconds. See `policy`.
  ///
  /// The following arguments are optional:
  late final Output<ResiliencyPolicyPolicy?> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Resiliency Policy Tier.
  /// Valid values are `MissionCritical`, `Critical`, `Important`, `CoreServices`, `NonCritical`, and `NotApplicable`.
  late final Output<String> tier;
  late final Output<ResiliencyPolicyTimeouts?> timeouts;

  ResiliencyPolicy(
    String name, {
    ResiliencyPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:resiliencehub/resiliencyPolicy:ResiliencyPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dataLocationConstraint =
        registerOutput<String>('dataLocationConstraint');
    this.description = registerOutput<String?>('description');
    this.estimatedCostTier = registerOutput<String>('estimatedCostTier');
    this.name = registerOutput<String>('name');
    this.policy = registerOutput<ResiliencyPolicyPolicy?>('policy');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tier = registerOutput<String>('tier');
    this.timeouts = registerOutput<ResiliencyPolicyTimeouts?>('timeouts');
  }
}
