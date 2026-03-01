// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PatchBaseline resources.
class PatchBaselineState {
  /// Accept the rules. This value follows the json format. For more details, see the description of [ApprovalRules in the Request parameters table for details](https://www.alibabacloud.com/help/zh/operation-orchestration-service/latest/api-oos-2019-06-01-createpatchbaseline).
  final pulumi.Input<String>? approvalRules;
  /// Approved Patch.
  final pulumi.Input<List<String>>? approvedPatches;
  /// ApprovedPatchesEnableNonSecurity.
  final pulumi.Input<bool>? approvedPatchesEnableNonSecurity;
  /// Creation time.
  final pulumi.Input<String>? createTime;
  /// Patches baseline description information.
  final pulumi.Input<String>? description;
  /// Operating system type. Valid values: `AliyunLinux`, `Anolis`, `CentOS`, `Debian`, `RedhatEnterpriseLinux`, `Ubuntu`, `Windows`, `AlmaLinux`.
  final pulumi.Input<String>? operationSystem;
  /// The name of the patch baseline.
  final pulumi.Input<String>? patchBaselineName;
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

  /// Creates a new [PatchBaselineState].
  /// [approvalRules] Accept the rules. This value follows the json format. For more details, see the description of [ApprovalRules in the Request parameters table for details](https://www.alibabacloud.com/help/zh/operation-orchestration-service/latest/api-oos-2019-06-01-createpatchbaseline).
  /// [approvedPatches] Approved Patch.
  /// [approvedPatchesEnableNonSecurity] ApprovedPatchesEnableNonSecurity.
  /// [createTime] Creation time.
  /// [description] Patches baseline description information.
  /// [operationSystem] Operating system type. Valid values: `AliyunLinux`, `Anolis`, `CentOS`, `Debian`, `RedhatEnterpriseLinux`, `Ubuntu`, `Windows`, `AlmaLinux`.
  /// [patchBaselineName] The name of the patch baseline.
  /// [rejectedPatches] Reject patches.
  /// [rejectedPatchesAction] Rejected patches action. Valid values: `ALLOW_AS_DEPENDENCY`, `BLOCK`.
  /// [resourceGroupId] The ID of the resource group.
  /// [sources] Source.
  /// [tags] Label.
  PatchBaselineState({
    pulumi.Output<String>? approvalRules,
    pulumi.Output<List<String>>? approvedPatches,
    pulumi.Output<bool>? approvedPatchesEnableNonSecurity,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? operationSystem,
    pulumi.Output<String>? patchBaselineName,
    pulumi.Output<List<String>>? rejectedPatches,
    pulumi.Output<String>? rejectedPatchesAction,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<List<String>>? sources,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      approvalRules = pulumi.Input.asOptionalInput<String>(approvalRules),
      approvedPatches = pulumi.Input.asOptionalInput<List<String>>(approvedPatches),
      approvedPatchesEnableNonSecurity = pulumi.Input.asOptionalInput<bool>(approvedPatchesEnableNonSecurity),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      operationSystem = pulumi.Input.asOptionalInput<String>(operationSystem),
      patchBaselineName = pulumi.Input.asOptionalInput<String>(patchBaselineName),
      rejectedPatches = pulumi.Input.asOptionalInput<List<String>>(rejectedPatches),
      rejectedPatchesAction = pulumi.Input.asOptionalInput<String>(rejectedPatchesAction),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      sources = pulumi.Input.asOptionalInput<List<String>>(sources),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRules': ?approvalRules,
      'approvedPatches': ?approvedPatches,
      'approvedPatchesEnableNonSecurity': ?approvedPatchesEnableNonSecurity,
      'createTime': ?createTime,
      'description': ?description,
      'operationSystem': ?operationSystem,
      'patchBaselineName': ?patchBaselineName,
      'rejectedPatches': ?rejectedPatches,
      'rejectedPatchesAction': ?rejectedPatchesAction,
      'resourceGroupId': ?resourceGroupId,
      'sources': ?sources,
      'tags': ?tags,
    };
  }

  factory PatchBaselineState.fromMap(Map<String, dynamic> map) {
    return PatchBaselineState(
      approvalRules: map['approvalRules'] == null ? null : pulumi.Output.create<String>(map['approvalRules'] as String),
      approvedPatches: map['approvedPatches'] == null ? null : pulumi.Output.create<List<String>>((map['approvedPatches'] as List).cast<String>()),
      approvedPatchesEnableNonSecurity: map['approvedPatchesEnableNonSecurity'] == null ? null : pulumi.Output.create<bool>(map['approvedPatchesEnableNonSecurity'] as bool),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      operationSystem: map['operationSystem'] == null ? null : pulumi.Output.create<String>(map['operationSystem'] as String),
      patchBaselineName: map['patchBaselineName'] == null ? null : pulumi.Output.create<String>(map['patchBaselineName'] as String),
      rejectedPatches: map['rejectedPatches'] == null ? null : pulumi.Output.create<List<String>>((map['rejectedPatches'] as List).cast<String>()),
      rejectedPatchesAction: map['rejectedPatchesAction'] == null ? null : pulumi.Output.create<String>(map['rejectedPatchesAction'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      sources: map['sources'] == null ? null : pulumi.Output.create<List<String>>((map['sources'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

