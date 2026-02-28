// ignore_for_file: unused_element, unnecessary_cast

class BucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObjects {
  /// Boolean which indicates if this criteria is enabled.
  final bool enabled;

  /// Creates a new [BucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObjects].
  /// [enabled] Boolean which indicates if this criteria is enabled.
  BucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObjects({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory BucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObjects.fromMap(
      Map<String, dynamic> map) {
    return BucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObjects(
      enabled: map['enabled'] as bool,
    );
  }
}
