// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oos_patch_baseline_patch_baseline_args_doc}
/// The set of arguments for PatchBaseline.
/// {@endtemplate}
/// {@macro pulumi_oos_patch_baseline_patch_baseline_args_doc}
class PatchBaselineArgs {
  /// Accept the rules. This value follows the json format. For more details, see the description of [ApprovalRules in the Request parameters table for details](https://www.alibabacloud.com/help/zh/operation-orchestration-service/latest/api-oos-2019-06-01-createpatchbaseline).
  final pulumi.Input<String> approvalRules;
  /// Approved Patch.
  final pulumi.Input<List<String>>? approvedPatches;
  /// ApprovedPatchesEnableNonSecurity.
  final pulumi.Input<bool>? approvedPatchesEnableNonSecurity;
  /// Patches baseline description information.
  final pulumi.Input<String>? description;
  /// Operating system type. Valid values: `AliyunLinux`, `Anolis`, `CentOS`, `Debian`, `RedhatEnterpriseLinux`, `Ubuntu`, `Windows`, `AlmaLinux`.
  final pulumi.Input<String> operationSystem;
  /// The name of the patch baseline.
  final pulumi.Input<String> patchBaselineName;
  /// Reject patches.
  final pulumi.Input<List<String>>? rejectedPatches;
  /// Rejected patches action. Valid values: `ALLOW_AS_DEPENDENCY`, `BLOCK`.
  final pulumi.Input<String>? rejectedPatchesAction;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// Source.
  final pulumi.Input<List<String>>? sources;
  /// Label.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PatchBaselineArgs].
  /// [approvalRules] Accept the rules. This value follows the json format. For more details, see the description of [ApprovalRules in the Request parameters table for details](https://www.alibabacloud.com/help/zh/operation-orchestration-service/latest/api-oos-2019-06-01-createpatchbaseline).
  /// [approvedPatches] Approved Patch.
  /// [approvedPatchesEnableNonSecurity] ApprovedPatchesEnableNonSecurity.
  /// [description] Patches baseline description information.
  /// [operationSystem] Operating system type. Valid values: `AliyunLinux`, `Anolis`, `CentOS`, `Debian`, `RedhatEnterpriseLinux`, `Ubuntu`, `Windows`, `AlmaLinux`.
  /// [patchBaselineName] The name of the patch baseline.
  /// [rejectedPatches] Reject patches.
  /// [rejectedPatchesAction] Rejected patches action. Valid values: `ALLOW_AS_DEPENDENCY`, `BLOCK`.
  /// [resourceGroupId] The ID of the resource group.
  /// [sources] Source.
  /// [tags] Label.
  PatchBaselineArgs({
    required this.approvalRules,
    this.approvedPatches,
    this.approvedPatchesEnableNonSecurity,
    this.description,
    required this.operationSystem,
    required this.patchBaselineName,
    this.rejectedPatches,
    this.rejectedPatchesAction,
    this.resourceGroupId,
    this.sources,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRules': approvalRules,
      'approvedPatches': ?approvedPatches,
      'approvedPatchesEnableNonSecurity': ?approvedPatchesEnableNonSecurity,
      'description': ?description,
      'operationSystem': operationSystem,
      'patchBaselineName': patchBaselineName,
      'rejectedPatches': ?rejectedPatches,
      'rejectedPatchesAction': ?rejectedPatchesAction,
      'resourceGroupId': ?resourceGroupId,
      'sources': ?sources,
      'tags': ?tags,
    };
  }

  factory PatchBaselineArgs.fromMap(Map<String, dynamic> map) {
    return PatchBaselineArgs(
      approvalRules: (map['approvalRules'] as String).input(),
      approvedPatches: map['approvedPatches'] == null ? null : ((map['approvedPatches'] as List).cast<String>()).input(),
      approvedPatchesEnableNonSecurity: map['approvedPatchesEnableNonSecurity'] == null ? null : (map['approvedPatchesEnableNonSecurity'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      operationSystem: (map['operationSystem'] as String).input(),
      patchBaselineName: (map['patchBaselineName'] as String).input(),
      rejectedPatches: map['rejectedPatches'] == null ? null : ((map['rejectedPatches'] as List).cast<String>()).input(),
      rejectedPatchesAction: map['rejectedPatchesAction'] == null ? null : (map['rejectedPatchesAction'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      sources: map['sources'] == null ? null : ((map['sources'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

