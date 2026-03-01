// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_baseline_approval_rule.dart';
import 'patch_baseline_global_filter.dart';
import 'patch_baseline_source.dart';

/// Input properties used for looking up and filtering PatchBaseline resources.
class PatchBaselineState {
  /// Set of rules used to include patches in the baseline. Up to 10 approval rules can be specified. See `approval_rule` below.
  final pulumi.Input<List<PatchBaselineApprovalRule>>? approvalRules;
  /// List of explicitly approved patches for the baseline. Cannot be specified with `approval_rule`.
  final pulumi.Input<List<String>>? approvedPatches;
  /// Compliance level for approved patches. This means that if an approved patch is reported as missing, this is the severity of the compliance violation. Valid values are `CRITICAL`, `HIGH`, `MEDIUM`, `LOW`, `INFORMATIONAL`, `UNSPECIFIED`. The default value is `UNSPECIFIED`.
  final pulumi.Input<String>? approvedPatchesComplianceLevel;
  /// Whether the list of approved patches includes non-security updates that should be applied to the instances. Applies to Linux instances only.
  final pulumi.Input<bool>? approvedPatchesEnableNonSecurity;
  /// ARN of the baseline.
  final pulumi.Input<String>? arn;
  /// Indicates the compliance status of managed nodes for which security-related patches are available but were not approved. Supported for Windows Server managed nodes only. Valid values are `COMPLIANT`, `NON_COMPLIANT`.
  final pulumi.Input<String>? availableSecurityUpdatesComplianceStatus;
  /// Description of the patch baseline.
  final pulumi.Input<String>? description;
  /// Set of global filters used to exclude patches from the baseline. Up to 4 global filters can be specified using Key/Value pairs. Valid Keys are `PRODUCT`, `CLASSIFICATION`, `MSRC_SEVERITY`, and `PATCH_ID`.
  final pulumi.Input<List<PatchBaselineGlobalFilter>>? globalFilters;
  /// JSON definition of the baseline.
  final pulumi.Input<String>? json;
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
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [PatchBaselineState].
  /// [approvalRules] Set of rules used to include patches in the baseline. Up to 10 approval rules can be specified. See `approval_rule` below.
  /// [approvedPatches] List of explicitly approved patches for the baseline. Cannot be specified with `approval_rule`.
  /// [approvedPatchesComplianceLevel] Compliance level for approved patches. This means that if an approved patch is reported as missing, this is the severity of the compliance violation. Valid values are `CRITICAL`, `HIGH`, `MEDIUM`, `LOW`, `INFORMATIONAL`, `UNSPECIFIED`. The default value is `UNSPECIFIED`.
  /// [approvedPatchesEnableNonSecurity] Whether the list of approved patches includes non-security updates that should be applied to the instances. Applies to Linux instances only.
  /// [arn] ARN of the baseline.
  /// [availableSecurityUpdatesComplianceStatus] Indicates the compliance status of managed nodes for which security-related patches are available but were not approved. Supported for Windows Server managed nodes only. Valid values are `COMPLIANT`, `NON_COMPLIANT`.
  /// [description] Description of the patch baseline.
  /// [globalFilters] Set of global filters used to exclude patches from the baseline. Up to 4 global filters can be specified using Key/Value pairs. Valid Keys are `PRODUCT`, `CLASSIFICATION`, `MSRC_SEVERITY`, and `PATCH_ID`.
  /// [json] JSON definition of the baseline.
  /// [name] Name of the patch baseline.
  /// [operatingSystem] Operating system the patch baseline applies to. Valid values are `ALMA_LINUX`, `AMAZON_LINUX`, `AMAZON_LINUX_2`, `AMAZON_LINUX_2022`, `AMAZON_LINUX_2023`, `CENTOS`, `DEBIAN`, `MACOS`, `ORACLE_LINUX`, `RASPBIAN`, `REDHAT_ENTERPRISE_LINUX`, `ROCKY_LINUX`, `SUSE`, `UBUNTU`, and `WINDOWS`. The default value is `WINDOWS`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rejectedPatches] List of rejected patches.
  /// [rejectedPatchesAction] Action for Patch Manager to take on patches included in the `rejected_patches` list. Valid values are `ALLOW_AS_DEPENDENCY` and `BLOCK`.
  /// [sources] Configuration block with alternate sources for patches. Applies to Linux instances only. See `source` below.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  PatchBaselineState({
    pulumi.Output<List<PatchBaselineApprovalRule>>? approvalRules,
    pulumi.Output<List<String>>? approvedPatches,
    pulumi.Output<String>? approvedPatchesComplianceLevel,
    pulumi.Output<bool>? approvedPatchesEnableNonSecurity,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? availableSecurityUpdatesComplianceStatus,
    pulumi.Output<String>? description,
    pulumi.Output<List<PatchBaselineGlobalFilter>>? globalFilters,
    pulumi.Output<String>? json,
    pulumi.Output<String>? name,
    pulumi.Output<String>? operatingSystem,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? rejectedPatches,
    pulumi.Output<String>? rejectedPatchesAction,
    pulumi.Output<List<PatchBaselineSource>>? sources,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      approvalRules = pulumi.Input.asOptionalInput<List<PatchBaselineApprovalRule>>(approvalRules),
      approvedPatches = pulumi.Input.asOptionalInput<List<String>>(approvedPatches),
      approvedPatchesComplianceLevel = pulumi.Input.asOptionalInput<String>(approvedPatchesComplianceLevel),
      approvedPatchesEnableNonSecurity = pulumi.Input.asOptionalInput<bool>(approvedPatchesEnableNonSecurity),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      availableSecurityUpdatesComplianceStatus = pulumi.Input.asOptionalInput<String>(availableSecurityUpdatesComplianceStatus),
      description = pulumi.Input.asOptionalInput<String>(description),
      globalFilters = pulumi.Input.asOptionalInput<List<PatchBaselineGlobalFilter>>(globalFilters),
      json = pulumi.Input.asOptionalInput<String>(json),
      name = pulumi.Input.asOptionalInput<String>(name),
      operatingSystem = pulumi.Input.asOptionalInput<String>(operatingSystem),
      region = pulumi.Input.asOptionalInput<String>(region),
      rejectedPatches = pulumi.Input.asOptionalInput<List<String>>(rejectedPatches),
      rejectedPatchesAction = pulumi.Input.asOptionalInput<String>(rejectedPatchesAction),
      sources = pulumi.Input.asOptionalInput<List<PatchBaselineSource>>(sources),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRules': ?pulumi.Input.mapOptionalInputValue<List<PatchBaselineApprovalRule>, List<Map<String, dynamic>>>(approvalRules, (value) => pulumi.Input.encodeList<PatchBaselineApprovalRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'approvedPatches': ?approvedPatches,
      'approvedPatchesComplianceLevel': ?approvedPatchesComplianceLevel,
      'approvedPatchesEnableNonSecurity': ?approvedPatchesEnableNonSecurity,
      'arn': ?arn,
      'availableSecurityUpdatesComplianceStatus': ?availableSecurityUpdatesComplianceStatus,
      'description': ?description,
      'globalFilters': ?pulumi.Input.mapOptionalInputValue<List<PatchBaselineGlobalFilter>, List<Map<String, dynamic>>>(globalFilters, (value) => pulumi.Input.encodeList<PatchBaselineGlobalFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'json': ?json,
      'name': ?name,
      'operatingSystem': ?operatingSystem,
      'region': ?region,
      'rejectedPatches': ?rejectedPatches,
      'rejectedPatchesAction': ?rejectedPatchesAction,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<PatchBaselineSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<PatchBaselineSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory PatchBaselineState.fromMap(Map<String, dynamic> map) {
    return PatchBaselineState(
      approvalRules: map['approvalRules'] == null ? null : pulumi.Output.create<List<PatchBaselineApprovalRule>>(pulumi.Input.decodeList<PatchBaselineApprovalRule>(map['approvalRules'], (value) => PatchBaselineApprovalRule.fromMap((value as Map).cast<String, dynamic>()))),
      approvedPatches: map['approvedPatches'] == null ? null : pulumi.Output.create<List<String>>((map['approvedPatches'] as List).cast<String>()),
      approvedPatchesComplianceLevel: map['approvedPatchesComplianceLevel'] == null ? null : pulumi.Output.create<String>(map['approvedPatchesComplianceLevel'] as String),
      approvedPatchesEnableNonSecurity: map['approvedPatchesEnableNonSecurity'] == null ? null : pulumi.Output.create<bool>(map['approvedPatchesEnableNonSecurity'] as bool),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      availableSecurityUpdatesComplianceStatus: map['availableSecurityUpdatesComplianceStatus'] == null ? null : pulumi.Output.create<String>(map['availableSecurityUpdatesComplianceStatus'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      globalFilters: map['globalFilters'] == null ? null : pulumi.Output.create<List<PatchBaselineGlobalFilter>>(pulumi.Input.decodeList<PatchBaselineGlobalFilter>(map['globalFilters'], (value) => PatchBaselineGlobalFilter.fromMap((value as Map).cast<String, dynamic>()))),
      json: map['json'] == null ? null : pulumi.Output.create<String>(map['json'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      operatingSystem: map['operatingSystem'] == null ? null : pulumi.Output.create<String>(map['operatingSystem'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rejectedPatches: map['rejectedPatches'] == null ? null : pulumi.Output.create<List<String>>((map['rejectedPatches'] as List).cast<String>()),
      rejectedPatchesAction: map['rejectedPatchesAction'] == null ? null : pulumi.Output.create<String>(map['rejectedPatchesAction'] as String),
      sources: map['sources'] == null ? null : pulumi.Output.create<List<PatchBaselineSource>>(pulumi.Input.decodeList<PatchBaselineSource>(map['sources'], (value) => PatchBaselineSource.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

