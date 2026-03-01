// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_baseline_approval_rule.dart';
import 'patch_baseline_global_filter.dart';
import 'patch_baseline_source.dart';

/// {@template pulumi_ssm_patch_baseline_patch_baseline_args_doc}
/// The set of arguments for PatchBaseline.
/// {@endtemplate}
/// {@macro pulumi_ssm_patch_baseline_patch_baseline_args_doc}
class PatchBaselineArgs {
  /// Set of rules used to include patches in the baseline. Up to 10 approval rules can be specified. See `approval_rule` below.
  final pulumi.Input<List<PatchBaselineApprovalRule>>? approvalRules;

  /// List of explicitly approved patches for the baseline. Cannot be specified with `approval_rule`.
  final pulumi.Input<List<String>>? approvedPatches;

  /// Compliance level for approved patches. This means that if an approved patch is reported as missing, this is the severity of the compliance violation. Valid values are `CRITICAL`, `HIGH`, `MEDIUM`, `LOW`, `INFORMATIONAL`, `UNSPECIFIED`. The default value is `UNSPECIFIED`.
  final pulumi.Input<String>? approvedPatchesComplianceLevel;

  /// Whether the list of approved patches includes non-security updates that should be applied to the instances. Applies to Linux instances only.
  final pulumi.Input<bool>? approvedPatchesEnableNonSecurity;

  /// Indicates the compliance status of managed nodes for which security-related patches are available but were not approved. Supported for Windows Server managed nodes only. Valid values are `COMPLIANT`, `NON_COMPLIANT`.
  final pulumi.Input<String>? availableSecurityUpdatesComplianceStatus;

  /// Description of the patch baseline.
  final pulumi.Input<String>? description;

  /// Set of global filters used to exclude patches from the baseline. Up to 4 global filters can be specified using Key/Value pairs. Valid Keys are `PRODUCT`, `CLASSIFICATION`, `MSRC_SEVERITY`, and `PATCH_ID`.
  final pulumi.Input<List<PatchBaselineGlobalFilter>>? globalFilters;

  /// Name of the patch baseline.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Operating system the patch baseline applies to. Valid values are `ALMA_LINUX`, `AMAZON_LINUX`, `AMAZON_LINUX_2`, `AMAZON_LINUX_2022`, `AMAZON_LINUX_2023`, `CENTOS`, `DEBIAN`, `MACOS`, `ORACLE_LINUX`, `RASPBIAN`, `REDHAT_ENTERPRISE_LINUX`, `ROCKY_LINUX`, `SUSE`, `UBUNTU`, and `WINDOWS`. The default value is `WINDOWS`.
  final pulumi.Input<String>? operatingSystem;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// List of rejected patches.
  final pulumi.Input<List<String>>? rejectedPatches;

  /// Action for Patch Manager to take on patches included in the `rejected_patches` list. Valid values are `ALLOW_AS_DEPENDENCY` and `BLOCK`.
  final pulumi.Input<String>? rejectedPatchesAction;

  /// Configuration block with alternate sources for patches. Applies to Linux instances only. See `source` below.
  final pulumi.Input<List<PatchBaselineSource>>? sources;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PatchBaselineArgs].
  /// [approvalRules] Set of rules used to include patches in the baseline. Up to 10 approval rules can be specified. See `approval_rule` below.
  /// [approvedPatches] List of explicitly approved patches for the baseline. Cannot be specified with `approval_rule`.
  /// [approvedPatchesComplianceLevel] Compliance level for approved patches. This means that if an approved patch is reported as missing, this is the severity of the compliance violation. Valid values are `CRITICAL`, `HIGH`, `MEDIUM`, `LOW`, `INFORMATIONAL`, `UNSPECIFIED`. The default value is `UNSPECIFIED`.
  /// [approvedPatchesEnableNonSecurity] Whether the list of approved patches includes non-security updates that should be applied to the instances. Applies to Linux instances only.
  /// [availableSecurityUpdatesComplianceStatus] Indicates the compliance status of managed nodes for which security-related patches are available but were not approved. Supported for Windows Server managed nodes only. Valid values are `COMPLIANT`, `NON_COMPLIANT`.
  /// [description] Description of the patch baseline.
  /// [globalFilters] Set of global filters used to exclude patches from the baseline. Up to 4 global filters can be specified using Key/Value pairs. Valid Keys are `PRODUCT`, `CLASSIFICATION`, `MSRC_SEVERITY`, and `PATCH_ID`.
  /// [name] Name of the patch baseline.
  /// [operatingSystem] Operating system the patch baseline applies to. Valid values are `ALMA_LINUX`, `AMAZON_LINUX`, `AMAZON_LINUX_2`, `AMAZON_LINUX_2022`, `AMAZON_LINUX_2023`, `CENTOS`, `DEBIAN`, `MACOS`, `ORACLE_LINUX`, `RASPBIAN`, `REDHAT_ENTERPRISE_LINUX`, `ROCKY_LINUX`, `SUSE`, `UBUNTU`, and `WINDOWS`. The default value is `WINDOWS`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rejectedPatches] List of rejected patches.
  /// [rejectedPatchesAction] Action for Patch Manager to take on patches included in the `rejected_patches` list. Valid values are `ALLOW_AS_DEPENDENCY` and `BLOCK`.
  /// [sources] Configuration block with alternate sources for patches. Applies to Linux instances only. See `source` below.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  PatchBaselineArgs({
    List<PatchBaselineApprovalRule>? approvalRules,
    List<String>? approvedPatches,
    String? approvedPatchesComplianceLevel,
    bool? approvedPatchesEnableNonSecurity,
    String? availableSecurityUpdatesComplianceStatus,
    String? description,
    List<PatchBaselineGlobalFilter>? globalFilters,
    String? name,
    String? operatingSystem,
    String? region,
    List<String>? rejectedPatches,
    String? rejectedPatchesAction,
    List<PatchBaselineSource>? sources,
    Map<String, String>? tags,
  }) : approvalRules =
           pulumi.Input.asOptionalInput<List<PatchBaselineApprovalRule>>(
             approvalRules,
           ),
       approvedPatches = pulumi.Input.asOptionalInput<List<String>>(
         approvedPatches,
       ),
       approvedPatchesComplianceLevel = pulumi.Input.asOptionalInput<String>(
         approvedPatchesComplianceLevel,
       ),
       approvedPatchesEnableNonSecurity = pulumi.Input.asOptionalInput<bool>(
         approvedPatchesEnableNonSecurity,
       ),
       availableSecurityUpdatesComplianceStatus =
           pulumi.Input.asOptionalInput<String>(
             availableSecurityUpdatesComplianceStatus,
           ),
       description = pulumi.Input.asOptionalInput<String>(description),
       globalFilters =
           pulumi.Input.asOptionalInput<List<PatchBaselineGlobalFilter>>(
             globalFilters,
           ),
       name = pulumi.Input.asOptionalInput<String>(name),
       operatingSystem = pulumi.Input.asOptionalInput<String>(operatingSystem),
       region = pulumi.Input.asOptionalInput<String>(region),
       rejectedPatches = pulumi.Input.asOptionalInput<List<String>>(
         rejectedPatches,
       ),
       rejectedPatchesAction = pulumi.Input.asOptionalInput<String>(
         rejectedPatchesAction,
       ),
       sources = pulumi.Input.asOptionalInput<List<PatchBaselineSource>>(
         sources,
       ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<PatchBaselineApprovalRule>,
            List<Map<String, dynamic>>
          >(
            approvalRules,
            (value) =>
                pulumi.Input.encodeList<
                  PatchBaselineApprovalRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'approvedPatches': ?approvedPatches,
      'approvedPatchesComplianceLevel': ?approvedPatchesComplianceLevel,
      'approvedPatchesEnableNonSecurity': ?approvedPatchesEnableNonSecurity,
      'availableSecurityUpdatesComplianceStatus':
          ?availableSecurityUpdatesComplianceStatus,
      'description': ?description,
      'globalFilters':
          ?pulumi.Input.mapOptionalInputValue<
            List<PatchBaselineGlobalFilter>,
            List<Map<String, dynamic>>
          >(
            globalFilters,
            (value) =>
                pulumi.Input.encodeList<
                  PatchBaselineGlobalFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'operatingSystem': ?operatingSystem,
      'region': ?region,
      'rejectedPatches': ?rejectedPatches,
      'rejectedPatchesAction': ?rejectedPatchesAction,
      'sources':
          ?pulumi.Input.mapOptionalInputValue<
            List<PatchBaselineSource>,
            List<Map<String, dynamic>>
          >(
            sources,
            (value) =>
                pulumi.Input.encodeList<
                  PatchBaselineSource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tags': ?tags,
    };
  }

  factory PatchBaselineArgs.fromMap(Map<String, dynamic> map) {
    return PatchBaselineArgs(
      approvalRules: map['approvalRules'] == null
          ? null
          : pulumi.Input.decodeList<PatchBaselineApprovalRule>(
              map['approvalRules'],
              (value) => PatchBaselineApprovalRule.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      approvedPatches: map['approvedPatches'] == null
          ? null
          : (map['approvedPatches'] as List).cast<String>(),
      approvedPatchesComplianceLevel:
          map['approvedPatchesComplianceLevel'] == null
          ? null
          : map['approvedPatchesComplianceLevel'] as String,
      approvedPatchesEnableNonSecurity:
          map['approvedPatchesEnableNonSecurity'] == null
          ? null
          : map['approvedPatchesEnableNonSecurity'] as bool,
      availableSecurityUpdatesComplianceStatus:
          map['availableSecurityUpdatesComplianceStatus'] == null
          ? null
          : map['availableSecurityUpdatesComplianceStatus'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      globalFilters: map['globalFilters'] == null
          ? null
          : pulumi.Input.decodeList<PatchBaselineGlobalFilter>(
              map['globalFilters'],
              (value) => PatchBaselineGlobalFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      operatingSystem: map['operatingSystem'] == null
          ? null
          : map['operatingSystem'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      rejectedPatches: map['rejectedPatches'] == null
          ? null
          : (map['rejectedPatches'] as List).cast<String>(),
      rejectedPatchesAction: map['rejectedPatchesAction'] == null
          ? null
          : map['rejectedPatchesAction'] as String,
      sources: map['sources'] == null
          ? null
          : pulumi.Input.decodeList<PatchBaselineSource>(
              map['sources'],
              (value) => PatchBaselineSource.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
