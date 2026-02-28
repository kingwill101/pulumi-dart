// ignore_for_file: unused_element, unnecessary_cast

class GetBucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModification {
  final String status;

  /// Creates a new [GetBucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModification].
  /// [status] Required.
  GetBucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModification({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['status'] = status;
    return map;
  }

  factory GetBucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModification.fromMap(
      Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModification(
      status: map['status'] as String,
    );
  }
}
