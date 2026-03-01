// ignore_for_file: unused_element, unnecessary_cast


class ManagementPolicyRuleActionsBaseBlob {
  /// Whether a blob should automatically be tiered from cool back to hot if it's accessed again after being tiered to cool. Defaults to `false`.
  ///
  /// > **Note:** The `auto_tier_to_hot_from_cool_enabled` must be used together with `tier_to_cool_after_days_since_last_access_time_greater_than`.
  final bool? autoTierToHotFromCoolEnabled;
  /// The age in days after creation to delete the blob. Must be between `0` and `99999`. Defaults to `-1`.
  ///
  /// > **Note:** The `delete_after_days_since_modification_greater_than`, `delete_after_days_since_last_access_time_greater_than` and `delete_after_days_since_creation_greater_than` can not be set at the same time.
  ///
  /// > **Note:** The `last_access_time_enabled` must be set to `true` in the `azure.storage.Account` in order to use `tier_to_cool_after_days_since_last_access_time_greater_than`, `tier_to_archive_after_days_since_last_access_time_greater_than` and `delete_after_days_since_last_access_time_greater_than`.
  final int? deleteAfterDaysSinceCreationGreaterThan;
  /// The age in days after last access time to delete the blob. Must be between `0` and `99999`. Defaults to `-1`.
  final int? deleteAfterDaysSinceLastAccessTimeGreaterThan;
  /// The age in days after last modification to delete the blob. Must be between `0` and `99999`. Defaults to `-1`.
  final int? deleteAfterDaysSinceModificationGreaterThan;
  /// The age in days after creation to archive storage. Supports blob currently at Hot or Cool tier. Must be between `0` and `99999`. Defaults to `-1`.
  ///
  /// > **Note:** The `tier_to_archive_after_days_since_modification_greater_than`, `tier_to_archive_after_days_since_last_access_time_greater_than` and `tier_to_archive_after_days_since_creation_greater_than` can not be set at the same time.
  final int? tierToArchiveAfterDaysSinceCreationGreaterThan;
  /// The age in days after last access time to tier blobs to archive storage. Supports blob currently at Hot or Cool tier. Must be between `0` and `99999`. Defaults to `-1`.
  final int? tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan;
  /// The age in days after last tier change to the blobs to skip to be archived. Must be between `0` and `99999`. Defaults to `-1`.
  final int? tierToArchiveAfterDaysSinceLastTierChangeGreaterThan;
  /// The age in days after last modification to tier blobs to archive storage. Supports blob currently at Hot or Cool tier. Must be between `0` and `99999`. Defaults to `-1`.
  final int? tierToArchiveAfterDaysSinceModificationGreaterThan;
  /// The age in days after creation to cold storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  ///
  /// > **Note:** The `tier_to_cool_after_days_since_modification_greater_than`, `tier_to_cool_after_days_since_last_access_time_greater_than` and `tier_to_cool_after_days_since_creation_greater_than` can not be set at the same time.
  final int? tierToColdAfterDaysSinceCreationGreaterThan;
  /// The age in days after last access time to tier blobs to cold storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  final int? tierToColdAfterDaysSinceLastAccessTimeGreaterThan;
  /// The age in days after last modification to tier blobs to cold storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  final int? tierToColdAfterDaysSinceModificationGreaterThan;
  /// The age in days after creation to cool storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  ///
  /// > **Note:** The `tier_to_cool_after_days_since_modification_greater_than`, `tier_to_cool_after_days_since_last_access_time_greater_than` and `tier_to_cool_after_days_since_creation_greater_than` can not be set at the same time.
  final int? tierToCoolAfterDaysSinceCreationGreaterThan;
  /// The age in days after last access time to tier blobs to cool storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  final int? tierToCoolAfterDaysSinceLastAccessTimeGreaterThan;
  /// The age in days after last modification to tier blobs to cool storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  final int? tierToCoolAfterDaysSinceModificationGreaterThan;

  /// Creates a new [ManagementPolicyRuleActionsBaseBlob].
  /// [autoTierToHotFromCoolEnabled] Whether a blob should automatically be tiered from cool back to hot if it's accessed again after being tiered to cool. Defaults to `false`.
  /// [deleteAfterDaysSinceCreationGreaterThan] The age in days after creation to delete the blob. Must be between `0` and `99999`. Defaults to `-1`.
  /// [deleteAfterDaysSinceLastAccessTimeGreaterThan] The age in days after last access time to delete the blob. Must be between `0` and `99999`. Defaults to `-1`.
  /// [deleteAfterDaysSinceModificationGreaterThan] The age in days after last modification to delete the blob. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToArchiveAfterDaysSinceCreationGreaterThan] The age in days after creation to archive storage. Supports blob currently at Hot or Cool tier. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan] The age in days after last access time to tier blobs to archive storage. Supports blob currently at Hot or Cool tier. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToArchiveAfterDaysSinceLastTierChangeGreaterThan] The age in days after last tier change to the blobs to skip to be archived. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToArchiveAfterDaysSinceModificationGreaterThan] The age in days after last modification to tier blobs to archive storage. Supports blob currently at Hot or Cool tier. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToColdAfterDaysSinceCreationGreaterThan] The age in days after creation to cold storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToColdAfterDaysSinceLastAccessTimeGreaterThan] The age in days after last access time to tier blobs to cold storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToColdAfterDaysSinceModificationGreaterThan] The age in days after last modification to tier blobs to cold storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToCoolAfterDaysSinceCreationGreaterThan] The age in days after creation to cool storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToCoolAfterDaysSinceLastAccessTimeGreaterThan] The age in days after last access time to tier blobs to cool storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToCoolAfterDaysSinceModificationGreaterThan] The age in days after last modification to tier blobs to cool storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  ManagementPolicyRuleActionsBaseBlob({
    this.autoTierToHotFromCoolEnabled,
    this.deleteAfterDaysSinceCreationGreaterThan,
    this.deleteAfterDaysSinceLastAccessTimeGreaterThan,
    this.deleteAfterDaysSinceModificationGreaterThan,
    this.tierToArchiveAfterDaysSinceCreationGreaterThan,
    this.tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan,
    this.tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
    this.tierToArchiveAfterDaysSinceModificationGreaterThan,
    this.tierToColdAfterDaysSinceCreationGreaterThan,
    this.tierToColdAfterDaysSinceLastAccessTimeGreaterThan,
    this.tierToColdAfterDaysSinceModificationGreaterThan,
    this.tierToCoolAfterDaysSinceCreationGreaterThan,
    this.tierToCoolAfterDaysSinceLastAccessTimeGreaterThan,
    this.tierToCoolAfterDaysSinceModificationGreaterThan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoTierToHotFromCoolEnabled': ?autoTierToHotFromCoolEnabled,
      'deleteAfterDaysSinceCreationGreaterThan': ?deleteAfterDaysSinceCreationGreaterThan,
      'deleteAfterDaysSinceLastAccessTimeGreaterThan': ?deleteAfterDaysSinceLastAccessTimeGreaterThan,
      'deleteAfterDaysSinceModificationGreaterThan': ?deleteAfterDaysSinceModificationGreaterThan,
      'tierToArchiveAfterDaysSinceCreationGreaterThan': ?tierToArchiveAfterDaysSinceCreationGreaterThan,
      'tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan': ?tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan,
      'tierToArchiveAfterDaysSinceLastTierChangeGreaterThan': ?tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
      'tierToArchiveAfterDaysSinceModificationGreaterThan': ?tierToArchiveAfterDaysSinceModificationGreaterThan,
      'tierToColdAfterDaysSinceCreationGreaterThan': ?tierToColdAfterDaysSinceCreationGreaterThan,
      'tierToColdAfterDaysSinceLastAccessTimeGreaterThan': ?tierToColdAfterDaysSinceLastAccessTimeGreaterThan,
      'tierToColdAfterDaysSinceModificationGreaterThan': ?tierToColdAfterDaysSinceModificationGreaterThan,
      'tierToCoolAfterDaysSinceCreationGreaterThan': ?tierToCoolAfterDaysSinceCreationGreaterThan,
      'tierToCoolAfterDaysSinceLastAccessTimeGreaterThan': ?tierToCoolAfterDaysSinceLastAccessTimeGreaterThan,
      'tierToCoolAfterDaysSinceModificationGreaterThan': ?tierToCoolAfterDaysSinceModificationGreaterThan,
    };
  }

  factory ManagementPolicyRuleActionsBaseBlob.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyRuleActionsBaseBlob(
      autoTierToHotFromCoolEnabled: map['autoTierToHotFromCoolEnabled'] == null ? null : map['autoTierToHotFromCoolEnabled'] as bool,
      deleteAfterDaysSinceCreationGreaterThan: map['deleteAfterDaysSinceCreationGreaterThan'] == null ? null : map['deleteAfterDaysSinceCreationGreaterThan'] as int,
      deleteAfterDaysSinceLastAccessTimeGreaterThan: map['deleteAfterDaysSinceLastAccessTimeGreaterThan'] == null ? null : map['deleteAfterDaysSinceLastAccessTimeGreaterThan'] as int,
      deleteAfterDaysSinceModificationGreaterThan: map['deleteAfterDaysSinceModificationGreaterThan'] == null ? null : map['deleteAfterDaysSinceModificationGreaterThan'] as int,
      tierToArchiveAfterDaysSinceCreationGreaterThan: map['tierToArchiveAfterDaysSinceCreationGreaterThan'] == null ? null : map['tierToArchiveAfterDaysSinceCreationGreaterThan'] as int,
      tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan: map['tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan'] == null ? null : map['tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan'] as int,
      tierToArchiveAfterDaysSinceLastTierChangeGreaterThan: map['tierToArchiveAfterDaysSinceLastTierChangeGreaterThan'] == null ? null : map['tierToArchiveAfterDaysSinceLastTierChangeGreaterThan'] as int,
      tierToArchiveAfterDaysSinceModificationGreaterThan: map['tierToArchiveAfterDaysSinceModificationGreaterThan'] == null ? null : map['tierToArchiveAfterDaysSinceModificationGreaterThan'] as int,
      tierToColdAfterDaysSinceCreationGreaterThan: map['tierToColdAfterDaysSinceCreationGreaterThan'] == null ? null : map['tierToColdAfterDaysSinceCreationGreaterThan'] as int,
      tierToColdAfterDaysSinceLastAccessTimeGreaterThan: map['tierToColdAfterDaysSinceLastAccessTimeGreaterThan'] == null ? null : map['tierToColdAfterDaysSinceLastAccessTimeGreaterThan'] as int,
      tierToColdAfterDaysSinceModificationGreaterThan: map['tierToColdAfterDaysSinceModificationGreaterThan'] == null ? null : map['tierToColdAfterDaysSinceModificationGreaterThan'] as int,
      tierToCoolAfterDaysSinceCreationGreaterThan: map['tierToCoolAfterDaysSinceCreationGreaterThan'] == null ? null : map['tierToCoolAfterDaysSinceCreationGreaterThan'] as int,
      tierToCoolAfterDaysSinceLastAccessTimeGreaterThan: map['tierToCoolAfterDaysSinceLastAccessTimeGreaterThan'] == null ? null : map['tierToCoolAfterDaysSinceLastAccessTimeGreaterThan'] as int,
      tierToCoolAfterDaysSinceModificationGreaterThan: map['tierToCoolAfterDaysSinceModificationGreaterThan'] == null ? null : map['tierToCoolAfterDaysSinceModificationGreaterThan'] as int,
    );
  }
}

