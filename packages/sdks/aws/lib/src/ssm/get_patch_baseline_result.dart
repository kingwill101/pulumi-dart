// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_patch_baseline_approval_rule.dart';
import 'get_patch_baseline_global_filter.dart';
import 'get_patch_baseline_source.dart';

/// Result data returned by getPatchBaseline.
class GetPatchBaselineResult {
  /// List of rules used to include patches in the baseline.
  final List<GetPatchBaselineApprovalRule>? approvalRules;
  /// List of explicitly approved patches for the baseline.
  final List<String>? approvedPatches;
  /// Compliance level for approved patches.
  final String? approvedPatchesComplianceLevel;
  /// Indicates whether the list of approved patches includes non-security updates that should be applied to the instances.
  final bool? approvedPatchesEnableNonSecurity;
  /// Indicates the compliance status of managed nodes for which security-related patches are available but were not approved. Supported for Windows Server managed nodes only.
  final String? availableSecurityUpdatesComplianceStatus;
  final bool? defaultBaseline;
  /// Description of the baseline.
  final String? description;
  /// Set of global filters used to exclude patches from the baseline.
  final List<GetPatchBaselineGlobalFilter>? globalFilters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// JSON representation of the baseline.
  final String? json;
  /// Name specified to identify the patch source.
  final String? name;
  final String? namePrefix;
  final String? operatingSystem;
  final String? owner;
  final String? region;
  /// List of rejected patches.
  final List<String>? rejectedPatches;
  /// Action specified to take on patches included in the `rejectedPatches` list.
  final String? rejectedPatchesAction;
  /// Information about the patches to use to update the managed nodes, including target operating systems and source repositories.
  final List<GetPatchBaselineSource>? sources;

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
  /// [owner] Optional.
  /// [region] Optional.
  /// [rejectedPatches] List of rejected patches.
  /// [rejectedPatchesAction] Action specified to take on patches included in the `rejectedPatches` list.
  /// [sources] Information about the patches to use to update the managed nodes, including target operating systems and source repositories.
  const GetPatchBaselineResult({
    this.approvalRules,
    this.approvedPatches,
    this.approvedPatchesComplianceLevel,
    this.approvedPatchesEnableNonSecurity,
    this.availableSecurityUpdatesComplianceStatus,
    this.defaultBaseline,
    this.description,
    this.globalFilters,
    this.id,
    this.json,
    this.name,
    this.namePrefix,
    this.operatingSystem,
    this.owner,
    this.region,
    this.rejectedPatches,
    this.rejectedPatchesAction,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRules': ?(() { final guardedValue = approvalRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPatchBaselineApprovalRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'approvedPatches': ?approvedPatches,
      'approvedPatchesComplianceLevel': ?approvedPatchesComplianceLevel,
      'approvedPatchesEnableNonSecurity': ?approvedPatchesEnableNonSecurity,
      'availableSecurityUpdatesComplianceStatus': ?availableSecurityUpdatesComplianceStatus,
      'defaultBaseline': ?defaultBaseline,
      'description': ?description,
      'globalFilters': ?(() { final guardedValue = globalFilters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPatchBaselineGlobalFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'json': ?json,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'operatingSystem': ?operatingSystem,
      'owner': ?owner,
      'region': ?region,
      'rejectedPatches': ?rejectedPatches,
      'rejectedPatchesAction': ?rejectedPatchesAction,
      'sources': ?(() { final guardedValue = sources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPatchBaselineSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetPatchBaselineResult.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselineResult(
      approvalRules: (() { final guardedValue = map['approvalRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPatchBaselineApprovalRule>(guardedValue, (value) => GetPatchBaselineApprovalRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      approvedPatches: (() { final guardedValue = map['approvedPatches']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      approvedPatchesComplianceLevel: (() { final guardedValue = map['approvedPatchesComplianceLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      approvedPatchesEnableNonSecurity: (() { final guardedValue = map['approvedPatchesEnableNonSecurity']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      availableSecurityUpdatesComplianceStatus: (() { final guardedValue = map['availableSecurityUpdatesComplianceStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultBaseline: (() { final guardedValue = map['defaultBaseline']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      globalFilters: (() { final guardedValue = map['globalFilters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPatchBaselineGlobalFilter>(guardedValue, (value) => GetPatchBaselineGlobalFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      json: (() { final guardedValue = map['json']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      operatingSystem: (() { final guardedValue = map['operatingSystem']; if (guardedValue == null) return null; return guardedValue as String; })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rejectedPatches: (() { final guardedValue = map['rejectedPatches']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      rejectedPatchesAction: (() { final guardedValue = map['rejectedPatchesAction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPatchBaselineSource>(guardedValue, (value) => GetPatchBaselineSource.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
