// ignore_for_file: unused_element, unnecessary_cast


class ManagementPolicyRuleActionsVersion {
  /// The age in days after creation to tier blob version to archive storage. Must be between `0` and `99999`. Defaults to `-1`.
  final int? changeTierToArchiveAfterDaysSinceCreation;
  /// The age in days creation create to tier blob version to cool storage. Must be between `0` and `99999`. Defaults to `-1`.
  final int? changeTierToCoolAfterDaysSinceCreation;
  /// The age in days after creation to delete the blob version. Must be between `0` and `99999`. Defaults to `-1`.
  final int? deleteAfterDaysSinceCreation;
  /// The age in days after last tier change to the blobs to skip to be archived. Must be between `0` and `99999`. Defaults to `-1`.
  final int? tierToArchiveAfterDaysSinceLastTierChangeGreaterThan;
  /// The age in days after creation to cold storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  final int? tierToColdAfterDaysSinceCreationGreaterThan;

  /// Creates a new [ManagementPolicyRuleActionsVersion].
  /// [changeTierToArchiveAfterDaysSinceCreation] The age in days after creation to tier blob version to archive storage. Must be between `0` and `99999`. Defaults to `-1`.
  /// [changeTierToCoolAfterDaysSinceCreation] The age in days creation create to tier blob version to cool storage. Must be between `0` and `99999`. Defaults to `-1`.
  /// [deleteAfterDaysSinceCreation] The age in days after creation to delete the blob version. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToArchiveAfterDaysSinceLastTierChangeGreaterThan] The age in days after last tier change to the blobs to skip to be archived. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToColdAfterDaysSinceCreationGreaterThan] The age in days after creation to cold storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  ManagementPolicyRuleActionsVersion({
    this.changeTierToArchiveAfterDaysSinceCreation,
    this.changeTierToCoolAfterDaysSinceCreation,
    this.deleteAfterDaysSinceCreation,
    this.tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
    this.tierToColdAfterDaysSinceCreationGreaterThan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeTierToArchiveAfterDaysSinceCreation': ?changeTierToArchiveAfterDaysSinceCreation,
      'changeTierToCoolAfterDaysSinceCreation': ?changeTierToCoolAfterDaysSinceCreation,
      'deleteAfterDaysSinceCreation': ?deleteAfterDaysSinceCreation,
      'tierToArchiveAfterDaysSinceLastTierChangeGreaterThan': ?tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
      'tierToColdAfterDaysSinceCreationGreaterThan': ?tierToColdAfterDaysSinceCreationGreaterThan,
    };
  }

  factory ManagementPolicyRuleActionsVersion.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyRuleActionsVersion(
      changeTierToArchiveAfterDaysSinceCreation: map['changeTierToArchiveAfterDaysSinceCreation'] == null ? null : map['changeTierToArchiveAfterDaysSinceCreation'] as int,
      changeTierToCoolAfterDaysSinceCreation: map['changeTierToCoolAfterDaysSinceCreation'] == null ? null : map['changeTierToCoolAfterDaysSinceCreation'] as int,
      deleteAfterDaysSinceCreation: map['deleteAfterDaysSinceCreation'] == null ? null : map['deleteAfterDaysSinceCreation'] as int,
      tierToArchiveAfterDaysSinceLastTierChangeGreaterThan: map['tierToArchiveAfterDaysSinceLastTierChangeGreaterThan'] == null ? null : map['tierToArchiveAfterDaysSinceLastTierChangeGreaterThan'] as int,
      tierToColdAfterDaysSinceCreationGreaterThan: map['tierToColdAfterDaysSinceCreationGreaterThan'] == null ? null : map['tierToColdAfterDaysSinceCreationGreaterThan'] as int,
    );
  }
}

