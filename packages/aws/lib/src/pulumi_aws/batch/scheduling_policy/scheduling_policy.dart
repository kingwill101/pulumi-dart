import 'package:pulumi/pulumi.dart' as pulumi;
import '../scheduling_policy_fair_share_policy/scheduling_policy_fair_share_policy.dart';
import 'scheduling_policy_args.dart';

/// Provides a Batch Scheduling Policy resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Batch Scheduling Policy using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:batch/schedulingPolicy:SchedulingPolicy test_policy arn:aws:batch:us-east-1:123456789012:scheduling-policy/sample
/// ```
class SchedulingPolicy extends pulumi.CustomResource {
  /// The Amazon Resource Name of the scheduling policy.
  late final pulumi.Output<String> arn;
  late final pulumi.Output<SchedulingPolicyFairSharePolicy?> fairSharePolicy;

  /// Specifies the name of the scheduling policy.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  SchedulingPolicy(
    String name, {
    SchedulingPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:batch/schedulingPolicy:SchedulingPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.fairSharePolicy =
        registerOutput<SchedulingPolicyFairSharePolicy?>('fairSharePolicy');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
