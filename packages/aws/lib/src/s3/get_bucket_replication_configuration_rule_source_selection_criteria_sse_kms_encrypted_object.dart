// ignore_for_file: unused_element, unnecessary_cast

class GetBucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject {
  final String status;

  /// Creates a new [GetBucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject].
  /// [status] Required.
  GetBucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'status': status};
  }

  factory GetBucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetBucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject(
      status: map['status'] as String,
    );
  }
}
