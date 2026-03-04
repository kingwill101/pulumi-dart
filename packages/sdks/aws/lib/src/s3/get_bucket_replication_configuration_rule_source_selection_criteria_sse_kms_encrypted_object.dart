// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject {
  final pulumi.Input<String> status;

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
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
