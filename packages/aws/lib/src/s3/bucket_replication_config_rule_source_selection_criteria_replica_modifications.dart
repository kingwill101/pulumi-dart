// ignore_for_file: unused_element, unnecessary_cast

class BucketReplicationConfigRuleSourceSelectionCriteriaReplicaModifications {
  /// Whether the existing objects should be replicated. Either `"Enabled"` or `"Disabled"`.
  final String status;

  /// Creates a new [BucketReplicationConfigRuleSourceSelectionCriteriaReplicaModifications].
  /// [status] Whether the existing objects should be replicated. Either `"Enabled"` or `"Disabled"`.
  BucketReplicationConfigRuleSourceSelectionCriteriaReplicaModifications({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'status': status};
  }

  factory BucketReplicationConfigRuleSourceSelectionCriteriaReplicaModifications.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketReplicationConfigRuleSourceSelectionCriteriaReplicaModifications(
      status: map['status'] as String,
    );
  }
}
