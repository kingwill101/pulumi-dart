// ignore_for_file: unused_element, unnecessary_cast

class BucketV2ReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject {
  /// Boolean which indicates if this criteria is enabled.
  final bool enabled;

  /// Creates a new [BucketV2ReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject].
  /// [enabled] Boolean which indicates if this criteria is enabled.
  BucketV2ReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory BucketV2ReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketV2ReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject(
      enabled: map['enabled'] as bool,
    );
  }
}
