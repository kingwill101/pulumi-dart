// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketV2ReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject {
  /// Boolean which indicates if this criteria is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [BucketV2ReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject].
  /// [enabled] Boolean which indicates if this criteria is enabled.
  const BucketV2ReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory BucketV2ReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject.fromMap(Map<String, dynamic> map) {
    return BucketV2ReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

