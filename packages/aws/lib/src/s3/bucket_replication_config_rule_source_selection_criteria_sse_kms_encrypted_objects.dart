// ignore_for_file: unused_element, unnecessary_cast

class BucketReplicationConfigRuleSourceSelectionCriteriaSseKmsEncryptedObjects {
  /// Whether the existing objects should be replicated. Either `"Enabled"` or `"Disabled"`.
  final String status;

  /// Creates a new [BucketReplicationConfigRuleSourceSelectionCriteriaSseKmsEncryptedObjects].
  /// [status] Whether the existing objects should be replicated. Either `"Enabled"` or `"Disabled"`.
  BucketReplicationConfigRuleSourceSelectionCriteriaSseKmsEncryptedObjects({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'status': status};
  }

  factory BucketReplicationConfigRuleSourceSelectionCriteriaSseKmsEncryptedObjects.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketReplicationConfigRuleSourceSelectionCriteriaSseKmsEncryptedObjects(
      status: map['status'] as String,
    );
  }
}
