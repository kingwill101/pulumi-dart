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
    this.approvalRules,
    this.approvedPatches,
    this.approvedPatchesEnableNonSecurity,
    this.createTime,
    this.description,
    this.operationSystem,
    this.patchBaselineName,
    this.rejectedPatches,
    this.rejectedPatchesAction,
    this.resourceGroupId,
    this.sources,
    this.tags,
  });

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
      approvalRules: (() { final guardedValue = map['approvalRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      approvedPatches: (() { final guardedValue = map['approvedPatches']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      approvedPatchesEnableNonSecurity: (() { final guardedValue = map['approvedPatchesEnableNonSecurity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationSystem: (() { final guardedValue = map['operationSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patchBaselineName: (() { final guardedValue = map['patchBaselineName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rejectedPatches: (() { final guardedValue = map['rejectedPatches']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      rejectedPatchesAction: (() { final guardedValue = map['rejectedPatchesAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

