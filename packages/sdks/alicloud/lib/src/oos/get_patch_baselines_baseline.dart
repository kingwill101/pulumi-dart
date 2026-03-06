// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPatchBaselinesBaseline {
  /// Accept the rules.
  final pulumi.Input<String> approvalRules;
  /// The create time of patch baselines.
  final pulumi.Input<String> createTime;
  /// The user who created the patch baselines.
  final pulumi.Input<String> createdBy;
  /// Patches baseline description information.
  final pulumi.Input<String> description;
  /// The ID of the Patch Baseline. Its value is same as `patch_baseline_name`.
  final pulumi.Input<String> id;
  /// Whether it is the default patch baseline.
  final pulumi.Input<bool> isDefault;
  /// Operating system type.
  final pulumi.Input<String> operationSystem;
  /// Patch baseline ID.
  final pulumi.Input<String> patchBaselineId;
  /// The name of the patch baseline.
  final pulumi.Input<String> patchBaselineName;
  /// Patch baseline sharing type.
  final pulumi.Input<String> shareType;
  /// The user who updated the patch baselines.
  final pulumi.Input<String> updatedBy;
  /// The update time of patch baselines.
  final pulumi.Input<String> updatedDate;

  /// Creates a new [GetPatchBaselinesBaseline].
  /// [approvalRules] Accept the rules.
  /// [createTime] The create time of patch baselines.
  /// [createdBy] The user who created the patch baselines.
  /// [description] Patches baseline description information.
  /// [id] The ID of the Patch Baseline. Its value is same as `patch_baseline_name`.
  /// [isDefault] Whether it is the default patch baseline.
  /// [operationSystem] Operating system type.
  /// [patchBaselineId] Patch baseline ID.
  /// [patchBaselineName] The name of the patch baseline.
  /// [shareType] Patch baseline sharing type.
  /// [updatedBy] The user who updated the patch baselines.
  /// [updatedDate] The update time of patch baselines.
  const GetPatchBaselinesBaseline({
    required this.approvalRules,
    required this.createTime,
    required this.createdBy,
    required this.description,
    required this.id,
    required this.isDefault,
    required this.operationSystem,
    required this.patchBaselineId,
    required this.patchBaselineName,
    required this.shareType,
    required this.updatedBy,
    required this.updatedDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRules': approvalRules,
      'createTime': createTime,
      'createdBy': createdBy,
      'description': description,
      'id': id,
      'isDefault': isDefault,
      'operationSystem': operationSystem,
      'patchBaselineId': patchBaselineId,
      'patchBaselineName': patchBaselineName,
      'shareType': shareType,
      'updatedBy': updatedBy,
      'updatedDate': updatedDate,
    };
  }

  factory GetPatchBaselinesBaseline.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselinesBaseline(
      approvalRules: pulumi.Input.fromValue(map['approvalRules'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      createdBy: pulumi.Input.fromValue(map['createdBy'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isDefault: pulumi.Input.fromValue(map['isDefault'] as bool),
      operationSystem: pulumi.Input.fromValue(map['operationSystem'] as String),
      patchBaselineId: pulumi.Input.fromValue(map['patchBaselineId'] as String),
      patchBaselineName: pulumi.Input.fromValue(map['patchBaselineName'] as String),
      shareType: pulumi.Input.fromValue(map['shareType'] as String),
      updatedBy: pulumi.Input.fromValue(map['updatedBy'] as String),
      updatedDate: pulumi.Input.fromValue(map['updatedDate'] as String),
    );
  }
}

