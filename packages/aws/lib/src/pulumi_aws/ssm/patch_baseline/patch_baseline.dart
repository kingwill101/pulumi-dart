import 'package:pulumi/pulumi.dart';
import '../patch_baseline_approval_rule/patch_baseline_approval_rule.dart';
import '../patch_baseline_global_filter/patch_baseline_global_filter.dart';
import '../patch_baseline_source/patch_baseline_source.dart';
import 'patch_baseline_args.dart';

/// Provides an SSM Patch Baseline resource.
///
/// > **NOTE on Patch Baselines:** The `approved_patches` and `approval_rule` are
/// both marked as optional fields, but the Patch Baseline requires that at least one
/// of them is specified.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// Using `approved_patches` only.
///
///
///
/// ### Advanced Usage, specifying patch filters
///
///
///
/// ### Advanced usage, specifying Microsoft application and Windows patch rules
///
///
///
/// ### Advanced usage, specifying alternate patch source repository
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the patch baseline.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSM Patch Baselines using their baseline ID. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/patchBaseline:PatchBaseline example pb-12345678
/// ```
class PatchBaseline extends CustomResource {
  /// Set of rules used to include patches in the baseline. Up to 10 approval rules can be specified. See `approval_rule` below.
  late final Output<List<PatchBaselineApprovalRule>?> approvalRules;

  /// List of explicitly approved patches for the baseline. Cannot be specified with `approval_rule`.
  late final Output<List<String>?> approvedPatches;

  /// Compliance level for approved patches. This means that if an approved patch is reported as missing, this is the severity of the compliance violation. Valid values are `CRITICAL`, `HIGH`, `MEDIUM`, `LOW`, `INFORMATIONAL`, `UNSPECIFIED`. The default value is `UNSPECIFIED`.
  late final Output<String?> approvedPatchesComplianceLevel;

  /// Whether the list of approved patches includes non-security updates that should be applied to the instances. Applies to Linux instances only.
  late final Output<bool?> approvedPatchesEnableNonSecurity;

  /// ARN of the baseline.
  late final Output<String> arn;

  /// Indicates the compliance status of managed nodes for which security-related patches are available but were not approved. Supported for Windows Server managed nodes only. Valid values are `COMPLIANT`, `NON_COMPLIANT`.
  late final Output<String> availableSecurityUpdatesComplianceStatus;

  /// Description of the patch baseline.
  late final Output<String?> description;

  /// Set of global filters used to exclude patches from the baseline. Up to 4 global filters can be specified using Key/Value pairs. Valid Keys are `PRODUCT`, `CLASSIFICATION`, `MSRC_SEVERITY`, and `PATCH_ID`.
  late final Output<List<PatchBaselineGlobalFilter>?> globalFilters;

  /// JSON definition of the baseline.
  late final Output<String> json;

  /// Name of the patch baseline.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Operating system the patch baseline applies to. Valid values are `ALMA_LINUX`, `AMAZON_LINUX`, `AMAZON_LINUX_2`, `AMAZON_LINUX_2022`, `AMAZON_LINUX_2023`, `CENTOS`, `DEBIAN`, `MACOS`, `ORACLE_LINUX`, `RASPBIAN`, `REDHAT_ENTERPRISE_LINUX`, `ROCKY_LINUX`, `SUSE`, `UBUNTU`, and `WINDOWS`. The default value is `WINDOWS`.
  late final Output<String?> operatingSystem;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of rejected patches.
  late final Output<List<String>?> rejectedPatches;

  /// Action for Patch Manager to take on patches included in the `rejected_patches` list. Valid values are `ALLOW_AS_DEPENDENCY` and `BLOCK`.
  late final Output<String> rejectedPatchesAction;

  /// Configuration block with alternate sources for patches. Applies to Linux instances only. See `source` below.
  late final Output<List<PatchBaselineSource>?> sources;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  PatchBaseline(
    String name, {
    PatchBaselineArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssm/patchBaseline:PatchBaseline',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.approvalRules =
        registerOutput<List<PatchBaselineApprovalRule>?>('approvalRules');
    this.approvedPatches = registerOutput<List<String>?>('approvedPatches');
    this.approvedPatchesComplianceLevel =
        registerOutput<String?>('approvedPatchesComplianceLevel');
    this.approvedPatchesEnableNonSecurity =
        registerOutput<bool?>('approvedPatchesEnableNonSecurity');
    this.arn = registerOutput<String>('arn');
    this.availableSecurityUpdatesComplianceStatus =
        registerOutput<String>('availableSecurityUpdatesComplianceStatus');
    this.description = registerOutput<String?>('description');
    this.globalFilters =
        registerOutput<List<PatchBaselineGlobalFilter>?>('globalFilters');
    this.json = registerOutput<String>('json');
    this.name = registerOutput<String>('name');
    this.operatingSystem = registerOutput<String?>('operatingSystem');
    this.region = registerOutput<String>('region');
    this.rejectedPatches = registerOutput<List<String>?>('rejectedPatches');
    this.rejectedPatchesAction =
        registerOutput<String>('rejectedPatchesAction');
    this.sources = registerOutput<List<PatchBaselineSource>?>('sources');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
