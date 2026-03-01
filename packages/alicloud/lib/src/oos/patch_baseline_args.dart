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
    required String approvalRules,
    List<String>? approvedPatches,
    bool? approvedPatchesEnableNonSecurity,
    String? description,
    required String operationSystem,
    required String patchBaselineName,
    List<String>? rejectedPatches,
    String? rejectedPatchesAction,
    String? resourceGroupId,
    List<String>? sources,
    Map<String, String>? tags,
  }) :
      approvalRules = pulumi.Input.asInput<String>(approvalRules),
      approvedPatches = pulumi.Input.asOptionalInput<List<String>>(approvedPatches),
      approvedPatchesEnableNonSecurity = pulumi.Input.asOptionalInput<bool>(approvedPatchesEnableNonSecurity),
      description = pulumi.Input.asOptionalInput<String>(description),
      operationSystem = pulumi.Input.asInput<String>(operationSystem),
      patchBaselineName = pulumi.Input.asInput<String>(patchBaselineName),
      rejectedPatches = pulumi.Input.asOptionalInput<List<String>>(rejectedPatches),
      rejectedPatchesAction = pulumi.Input.asOptionalInput<String>(rejectedPatchesAction),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      sources = pulumi.Input.asOptionalInput<List<String>>(sources),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      approvalRules: map['approvalRules'] as String,
      approvedPatches: map['approvedPatches'] == null ? null : (map['approvedPatches'] as List).cast<String>(),
      approvedPatchesEnableNonSecurity: map['approvedPatchesEnableNonSecurity'] == null ? null : map['approvedPatchesEnableNonSecurity'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      operationSystem: map['operationSystem'] as String,
      patchBaselineName: map['patchBaselineName'] as String,
      rejectedPatches: map['rejectedPatches'] == null ? null : (map['rejectedPatches'] as List).cast<String>(),
      rejectedPatchesAction: map['rejectedPatchesAction'] == null ? null : map['rejectedPatchesAction'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      sources: map['sources'] == null ? null : (map['sources'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

