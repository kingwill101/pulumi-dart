// ignore_for_file: unused_element, unnecessary_cast


class GetPatchBaselinesBaseline {
  /// Accept the rules.
  final String approvalRules;
  /// The create time of patch baselines.
  final String createTime;
  /// The user who created the patch baselines.
  final String createdBy;
  /// Patches baseline description information.
  final String description;
  /// The ID of the Patch Baseline. Its value is same as `patch_baseline_name`.
  final String id;
  /// Whether it is the default patch baseline.
  final bool isDefault;
  /// Operating system type.
  final String operationSystem;
  /// Patch baseline ID.
  final String patchBaselineId;
  /// The name of the patch baseline.
  final String patchBaselineName;
  /// Patch baseline sharing type.
  final String shareType;
  /// The user who updated the patch baselines.
  final String updatedBy;
  /// The update time of patch baselines.
  final String updatedDate;

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
  GetPatchBaselinesBaseline({
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
      approvalRules: map['approvalRules'] as String,
      createTime: map['createTime'] as String,
      createdBy: map['createdBy'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      isDefault: map['isDefault'] as bool,
      operationSystem: map['operationSystem'] as String,
      patchBaselineId: map['patchBaselineId'] as String,
      patchBaselineName: map['patchBaselineName'] as String,
      shareType: map['shareType'] as String,
      updatedBy: map['updatedBy'] as String,
      updatedDate: map['updatedDate'] as String,
    );
  }
}

