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
    final map = <String, dynamic>{};
    map['status'] = status;
    return map;
  }

  factory BucketReplicationConfigRuleSourceSelectionCriteriaReplicaModifications.fromMap(
      Map<String, dynamic> map) {
    return BucketReplicationConfigRuleSourceSelectionCriteriaReplicaModifications(
      status: map['status'] as String,
    );
  }
}
