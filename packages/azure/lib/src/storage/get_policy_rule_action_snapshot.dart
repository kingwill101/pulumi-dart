// ignore_for_file: unused_element, unnecessary_cast


class GetPolicyRuleActionSnapshot {
  /// The age in days after creation to tier blob version to archive storage.
  final int changeTierToArchiveAfterDaysSinceCreation;
  /// The age in days after creation to tier blob version to cool storage.
  final int changeTierToCoolAfterDaysSinceCreation;
  /// The age in days after creation to delete the blob snapshot.
  final int deleteAfterDaysSinceCreationGreaterThan;
  /// The age in days after last tier change to the blobs to skip to be archived.
  final int tierToArchiveAfterDaysSinceLastTierChangeGreaterThan;
  /// Optional The age in days after creation to cold storage. Supports blob currently at Hot tier.
  final int tierToColdAfterDaysSinceCreationGreaterThan;

  /// Creates a new [GetPolicyRuleActionSnapshot].
  /// [changeTierToArchiveAfterDaysSinceCreation] The age in days after creation to tier blob version to archive storage.
  /// [changeTierToCoolAfterDaysSinceCreation] The age in days after creation to tier blob version to cool storage.
  /// [deleteAfterDaysSinceCreationGreaterThan] The age in days after creation to delete the blob snapshot.
  /// [tierToArchiveAfterDaysSinceLastTierChangeGreaterThan] The age in days after last tier change to the blobs to skip to be archived.
  /// [tierToColdAfterDaysSinceCreationGreaterThan] Optional The age in days after creation to cold storage. Supports blob currently at Hot tier.
  GetPolicyRuleActionSnapshot({
    required this.changeTierToArchiveAfterDaysSinceCreation,
    required this.changeTierToCoolAfterDaysSinceCreation,
    required this.deleteAfterDaysSinceCreationGreaterThan,
    required this.tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
    required this.tierToColdAfterDaysSinceCreationGreaterThan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeTierToArchiveAfterDaysSinceCreation': changeTierToArchiveAfterDaysSinceCreation,
      'changeTierToCoolAfterDaysSinceCreation': changeTierToCoolAfterDaysSinceCreation,
      'deleteAfterDaysSinceCreationGreaterThan': deleteAfterDaysSinceCreationGreaterThan,
      'tierToArchiveAfterDaysSinceLastTierChangeGreaterThan': tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
      'tierToColdAfterDaysSinceCreationGreaterThan': tierToColdAfterDaysSinceCreationGreaterThan,
    };
  }

  factory GetPolicyRuleActionSnapshot.fromMap(Map<String, dynamic> map) {
    return GetPolicyRuleActionSnapshot(
      changeTierToArchiveAfterDaysSinceCreation: map['changeTierToArchiveAfterDaysSinceCreation'] as int,
      changeTierToCoolAfterDaysSinceCreation: map['changeTierToCoolAfterDaysSinceCreation'] as int,
      deleteAfterDaysSinceCreationGreaterThan: map['deleteAfterDaysSinceCreationGreaterThan'] as int,
      tierToArchiveAfterDaysSinceLastTierChangeGreaterThan: map['tierToArchiveAfterDaysSinceLastTierChangeGreaterThan'] as int,
      tierToColdAfterDaysSinceCreationGreaterThan: map['tierToColdAfterDaysSinceCreationGreaterThan'] as int,
    );
  }
}

