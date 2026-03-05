// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObjects {
  /// Boolean which indicates if this criteria is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [BucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObjects].
  /// [enabled] Boolean which indicates if this criteria is enabled.
  BucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObjects({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory BucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObjects.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObjects(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

