// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../patch_baseline_approval_rule/patch_baseline_approval_rule.dart';
import '../patch_baseline_global_filter/patch_baseline_global_filter.dart';
import '../patch_baseline_source/patch_baseline_source.dart';

/// The set of arguments for PatchBaseline.
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

  PatchBaselineArgs({
    this.approvalRules,
    this.approvedPatches,
    this.approvedPatchesComplianceLevel,
    this.approvedPatchesEnableNonSecurity,
    this.availableSecurityUpdatesComplianceStatus,
    this.description,
    this.globalFilters,
    this.name,
    this.operatingSystem,
    this.region,
    this.rejectedPatches,
    this.rejectedPatchesAction,
    this.sources,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final approvalRulesValue = approvalRules;
    if (approvalRulesValue != null) {
      map['approvalRules'] = pulumi.Input.mapOptionalInputValue<
              List<PatchBaselineApprovalRule>, List<Map<String, dynamic>>>(
          approvalRulesValue,
          (value) => pulumi.Input.encodeList<PatchBaselineApprovalRule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final approvedPatchesValue = approvedPatches;
    if (approvedPatchesValue != null) {
      map['approvedPatches'] = approvedPatchesValue;
    }
    final approvedPatchesComplianceLevelValue = approvedPatchesComplianceLevel;
    if (approvedPatchesComplianceLevelValue != null) {
      map['approvedPatchesComplianceLevel'] =
          approvedPatchesComplianceLevelValue;
    }
    final approvedPatchesEnableNonSecurityValue =
        approvedPatchesEnableNonSecurity;
    if (approvedPatchesEnableNonSecurityValue != null) {
      map['approvedPatchesEnableNonSecurity'] =
          approvedPatchesEnableNonSecurityValue;
    }
    final availableSecurityUpdatesComplianceStatusValue =
        availableSecurityUpdatesComplianceStatus;
    if (availableSecurityUpdatesComplianceStatusValue != null) {
      map['availableSecurityUpdatesComplianceStatus'] =
          availableSecurityUpdatesComplianceStatusValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final globalFiltersValue = globalFilters;
    if (globalFiltersValue != null) {
      map['globalFilters'] = pulumi.Input.mapOptionalInputValue<
              List<PatchBaselineGlobalFilter>, List<Map<String, dynamic>>>(
          globalFiltersValue,
          (value) => pulumi.Input.encodeList<PatchBaselineGlobalFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final operatingSystemValue = operatingSystem;
    if (operatingSystemValue != null) {
      map['operatingSystem'] = operatingSystemValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rejectedPatchesValue = rejectedPatches;
    if (rejectedPatchesValue != null) {
      map['rejectedPatches'] = rejectedPatchesValue;
    }
    final rejectedPatchesActionValue = rejectedPatchesAction;
    if (rejectedPatchesActionValue != null) {
      map['rejectedPatchesAction'] = rejectedPatchesActionValue;
    }
    final sourcesValue = sources;
    if (sourcesValue != null) {
      map['sources'] = pulumi.Input.mapOptionalInputValue<
              List<PatchBaselineSource>, List<Map<String, dynamic>>>(
          sourcesValue,
          (value) => pulumi.Input.encodeList<PatchBaselineSource,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory PatchBaselineArgs.fromMap(Map<String, dynamic> map) {
    return PatchBaselineArgs(
      approvalRules:
          pulumi.Input.asOptionalInput<List<PatchBaselineApprovalRule>>(
              map['approvalRules']),
      approvedPatches:
          pulumi.Input.asOptionalInput<List<String>>(map['approvedPatches']),
      approvedPatchesComplianceLevel: pulumi.Input.asOptionalInput<String>(
          map['approvedPatchesComplianceLevel']),
      approvedPatchesEnableNonSecurity: pulumi.Input.asOptionalInput<bool>(
          map['approvedPatchesEnableNonSecurity']),
      availableSecurityUpdatesComplianceStatus:
          pulumi.Input.asOptionalInput<String>(
              map['availableSecurityUpdatesComplianceStatus']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      globalFilters:
          pulumi.Input.asOptionalInput<List<PatchBaselineGlobalFilter>>(
              map['globalFilters']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      operatingSystem:
          pulumi.Input.asOptionalInput<String>(map['operatingSystem']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      rejectedPatches:
          pulumi.Input.asOptionalInput<List<String>>(map['rejectedPatches']),
      rejectedPatchesAction:
          pulumi.Input.asOptionalInput<String>(map['rejectedPatchesAction']),
      sources: pulumi.Input.asOptionalInput<List<PatchBaselineSource>>(
          map['sources']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
