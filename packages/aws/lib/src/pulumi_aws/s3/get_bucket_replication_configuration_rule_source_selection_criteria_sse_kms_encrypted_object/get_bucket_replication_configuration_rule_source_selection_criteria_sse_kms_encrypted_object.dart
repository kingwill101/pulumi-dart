// ignore_for_file: unused_element, unnecessary_cast

class GetBucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject {
  final String status;

  GetBucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['status'] = status;
    return map;
  }

  factory GetBucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject.fromMap(
      Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject(
      status: map['status'] as String,
    );
  }
}
