// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_patch_baseline_approval_rule.dart';
import 'get_patch_baseline_global_filter.dart';
import 'get_patch_baseline_source.dart';

/// Result data returned by getPatchBaseline.
class GetPatchBaselineResult {
  /// List of rules used to include patches in the baseline.
  final List<GetPatchBaselineApprovalRule> approvalRules;
  /// List of explicitly approved patches for the baseline.
  final List<String> approvedPatches;
  /// Compliance level for approved patches.
  final String approvedPatchesComplianceLevel;
  /// Indicates whether the list of approved patches includes non-security updates that should be applied to the instances.
  final bool approvedPatchesEnableNonSecurity;
  /// Indicates the compliance status of managed nodes for which security-related patches are available but were not approved. Supported for Windows Server managed nodes only.
  final String availableSecurityUpdatesComplianceStatus;
  final bool? defaultBaseline;
  /// Description of the baseline.
  final String description;
  /// Set of global filters used to exclude patches from the baseline.
  final List<GetPatchBaselineGlobalFilter> globalFilters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// JSON representation of the baseline.
  final String json;
  /// Name specified to identify the patch source.
  final String name;
  final String? namePrefix;
  final String? operatingSystem;
  final String owner;
  final String region;
  /// List of rejected patches.
  final List<String> rejectedPatches;
  /// Action specified to take on patches included in the `rejectedPatches` list.
  final String rejectedPatchesAction;
  /// Information about the patches to use to update the managed nodes, including target operating systems and source repositories.
  final List<GetPatchBaselineSource> sources;

  /// Creates a new [GetPatchBaselineResult].
  /// [approvalRules] List of rules used to include patches in the baseline.
  /// [approvedPatches] List of explicitly approved patches for the baseline.
  /// [approvedPatchesComplianceLevel] Compliance level for approved patches.
  /// [approvedPatchesEnableNonSecurity] Indicates whether the list of approved patches includes non-security updates that should be applied to the instances.
  /// [availableSecurityUpdatesComplianceStatus] Indicates the compliance status of managed nodes for which security-related patches are available but were not approved. Supported for Windows Server managed nodes only.
  /// [defaultBaseline] Optional.
  /// [description] Description of the baseline.
  /// [globalFilters] Set of global filters used to exclude patches from the baseline.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [json] JSON representation of the baseline.
  /// [name] Name specified to identify the patch source.
  /// [namePrefix] Optional.
  /// [operatingSystem] Optional.
  /// [owner] Required.
  /// [region] Required.
  /// [rejectedPatches] List of rejected patches.
  /// [rejectedPatchesAction] Action specified to take on patches included in the `rejectedPatches` list.
  /// [sources] Information about the patches to use to update the managed nodes, including target operating systems and source repositories.
  const GetPatchBaselineResult({
    required this.approvalRules,
    required this.approvedPatches,
    required this.approvedPatchesComplianceLevel,
    required this.approvedPatchesEnableNonSecurity,
    required this.availableSecurityUpdatesComplianceStatus,
    this.defaultBaseline,
    required this.description,
    required this.globalFilters,
    required this.id,
    required this.json,
    required this.name,
    this.namePrefix,
    this.operatingSystem,
    required this.owner,
    required this.region,
    required this.rejectedPatches,
    required this.rejectedPatchesAction,
    required this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRules': pulumi.Input.encodeList<GetPatchBaselineApprovalRule, Map<String, dynamic>>(approvalRules, (value) => value.toMap()),
      'approvedPatches': approvedPatches,
      'approvedPatchesComplianceLevel': approvedPatchesComplianceLevel,
      'approvedPatchesEnableNonSecurity': approvedPatchesEnableNonSecurity,
      'availableSecurityUpdatesComplianceStatus': availableSecurityUpdatesComplianceStatus,
      'defaultBaseline': ?defaultBaseline,
      'description': description,
      'globalFilters': pulumi.Input.encodeList<GetPatchBaselineGlobalFilter, Map<String, dynamic>>(globalFilters, (value) => value.toMap()),
      'id': id,
      'json': json,
      'name': name,
      'namePrefix': ?namePrefix,
      'operatingSystem': ?operatingSystem,
      'owner': owner,
      'region': region,
      'rejectedPatches': rejectedPatches,
      'rejectedPatchesAction': rejectedPatchesAction,
      'sources': pulumi.Input.encodeList<GetPatchBaselineSource, Map<String, dynamic>>(sources, (value) => value.toMap()),
    };
  }

  factory GetPatchBaselineResult.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselineResult(
      approvalRules: pulumi.Input.decodeList<GetPatchBaselineApprovalRule>(map['approvalRules']!, (value) => GetPatchBaselineApprovalRule.fromMap((value as Map).cast<String, dynamic>())),
      approvedPatches: (map['approvedPatches'] as List).cast<String>(),
      approvedPatchesComplianceLevel: map['approvedPatchesComplianceLevel'] as String,
      approvedPatchesEnableNonSecurity: map['approvedPatchesEnableNonSecurity'] as bool,
      availableSecurityUpdatesComplianceStatus: map['availableSecurityUpdatesComplianceStatus'] as String,
      defaultBaseline: (() { final guardedValue = map['defaultBaseline']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: map['description'] as String,
      globalFilters: pulumi.Input.decodeList<GetPatchBaselineGlobalFilter>(map['globalFilters']!, (value) => GetPatchBaselineGlobalFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      json: map['json'] as String,
      name: map['name'] as String,
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      operatingSystem: (() { final guardedValue = map['operatingSystem']; if (guardedValue == null) return null; return guardedValue as String; })(),
      owner: map['owner'] as String,
      region: map['region'] as String,
      rejectedPatches: (map['rejectedPatches'] as List).cast<String>(),
      rejectedPatchesAction: map['rejectedPatchesAction'] as String,
      sources: pulumi.Input.decodeList<GetPatchBaselineSource>(map['sources']!, (value) => GetPatchBaselineSource.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
