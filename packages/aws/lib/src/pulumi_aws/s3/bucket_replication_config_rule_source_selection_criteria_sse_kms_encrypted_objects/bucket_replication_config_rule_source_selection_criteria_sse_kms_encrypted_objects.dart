// ignore_for_file: unused_element, unnecessary_cast

class BucketReplicationConfigRuleSourceSelectionCriteriaSseKmsEncryptedObjects {
  /// Whether the existing objects should be replicated. Either `"Enabled"` or `"Disabled"`.
  final String status;

  BucketReplicationConfigRuleSourceSelectionCriteriaSseKmsEncryptedObjects({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['status'] = status;
    return map;
  }

  factory BucketReplicationConfigRuleSourceSelectionCriteriaSseKmsEncryptedObjects.fromMap(
      Map<String, dynamic> map) {
    return BucketReplicationConfigRuleSourceSelectionCriteriaSseKmsEncryptedObjects(
      status: map['status'] as String,
    );
  }
}
