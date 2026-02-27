import 'package:pulumi/pulumi.dart' as pulumi;
import '../target_group_config/target_group_config.dart';
import 'target_group_vpclattice_args.dart';

/// Resource for managing an AWS VPC Lattice Target Group.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Basic usage with Health check
///
///
///
/// ### ALB
///
/// If the type is ALB, `health_check` block is not supported.
///
///
///
/// ### Lambda
///
/// If the type is Lambda, `config` block is not supported.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Target Group using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/targetGroup:TargetGroup example tg-0c11d4dc16ed96bdb
/// ```
class TargetGroupVpclattice extends pulumi.CustomResource {
  /// ARN of the target group.
  late final pulumi.Output<String> arn;

  /// The target group configuration.
  late final pulumi.Output<TargetGroupConfig?> config;

  /// The name of the target group. The name must be unique within the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Status of the target group.
  late final pulumi.Output<String> status;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The type of target group. Valid Values are `IP` | `LAMBDA` | `INSTANCE` | `ALB`
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  TargetGroupVpclattice(
    String name, {
    TargetGroupVpclatticeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/targetGroup:TargetGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.config = registerOutput<TargetGroupConfig?>('config');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }
}
