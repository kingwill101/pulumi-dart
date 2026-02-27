import 'package:pulumi/pulumi.dart' as pulumi;
import '../rule_exclude_resource_tag/rule_exclude_resource_tag.dart';
import '../rule_lock_configuration/rule_lock_configuration.dart';
import '../rule_resource_tag/rule_resource_tag.dart';
import '../rule_retention_period/rule_retention_period.dart';
import 'rule_rbin_args.dart';

/// Resource for managing an AWS RBin Rule.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Region-Level Retention Rule
///
///
///
/// ## Import
///
/// Using `pulumi import`, import RBin Rule using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:rbin/rule:Rule example examplerule
/// ```
class RuleRbin extends pulumi.CustomResource {
  late final pulumi.Output<String> arn;

  /// Retention rule description.
  late final pulumi.Output<String> description;

  /// Exclusion tags to use to identify resources that are to be excluded, or ignored, by a Region-level retention rule. See `exclude_resource_tags` below.
  late final pulumi.Output<List<RuleExcludeResourceTag>?> excludeResourceTags;

  /// Information about the retention rule lock configuration. See `lock_configuration` below.
  late final pulumi.Output<RuleLockConfiguration?> lockConfiguration;

  /// (Timestamp) Date and time at which the unlock delay is set to expire. Only returned for retention rules that have been unlocked and that are still within the unlock delay period.
  late final pulumi.Output<String> lockEndTime;

  /// (Optional) Lock state of the retention rules to list. Only retention rules with the specified lock state are returned. Valid values are `locked`, `pending_unlock`, `unlocked`.
  late final pulumi.Output<String> lockState;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Resource tags to use to identify resources that are to be retained by a tag-level retention rule. See `resource_tags` below.
  late final pulumi.Output<List<RuleResourceTag>?> resourceTags;

  /// Resource type to be retained by the retention rule. Valid values are `EBS_SNAPSHOT` and `EC2_IMAGE`.
  late final pulumi.Output<String> resourceType;

  /// Information about the retention period for which the retention rule is to retain resources. See `retention_period` below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<RuleRetentionPeriod> retentionPeriod;

  /// (String) State of the retention rule. Only retention rules that are in the `available` state retain resources. Valid values include `pending` and `available`.
  late final pulumi.Output<String> status;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  RuleRbin(
    String name, {
    RuleRbinArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rbin/rule:Rule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.excludeResourceTags =
        registerOutput<List<RuleExcludeResourceTag>?>('excludeResourceTags');
    this.lockConfiguration =
        registerOutput<RuleLockConfiguration?>('lockConfiguration');
    this.lockEndTime = registerOutput<String>('lockEndTime');
    this.lockState = registerOutput<String>('lockState');
    this.region = registerOutput<String>('region');
    this.resourceTags = registerOutput<List<RuleResourceTag>?>('resourceTags');
    this.resourceType = registerOutput<String>('resourceType');
    this.retentionPeriod =
        registerOutput<RuleRetentionPeriod>('retentionPeriod');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
