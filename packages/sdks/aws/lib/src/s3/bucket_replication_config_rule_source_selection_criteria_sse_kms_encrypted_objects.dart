// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketReplicationConfigRuleSourceSelectionCriteriaSseKmsEncryptedObjects {
  /// Whether the existing objects should be replicated. Either `"Enabled"` or `"Disabled"`.
  final pulumi.Input<String> status;

  /// Creates a new [BucketReplicationConfigRuleSourceSelectionCriteriaSseKmsEncryptedObjects].
  /// [status] Whether the existing objects should be replicated. Either `"Enabled"` or `"Disabled"`.
  const BucketReplicationConfigRuleSourceSelectionCriteriaSseKmsEncryptedObjects({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory BucketReplicationConfigRuleSourceSelectionCriteriaSseKmsEncryptedObjects.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigRuleSourceSelectionCriteriaSseKmsEncryptedObjects(
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
