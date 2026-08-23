// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketReplicationConfigRuleSourceSelectionCriteriaReplicaModifications {
  /// Whether the existing objects should be replicated. Either `"Enabled"` or `"Disabled"`.
  final pulumi.Input<String> status;

  /// Creates a new [BucketReplicationConfigRuleSourceSelectionCriteriaReplicaModifications].
  /// [status] Whether the existing objects should be replicated. Either `"Enabled"` or `"Disabled"`.
  const BucketReplicationConfigRuleSourceSelectionCriteriaReplicaModifications({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory BucketReplicationConfigRuleSourceSelectionCriteriaReplicaModifications.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigRuleSourceSelectionCriteriaReplicaModifications(
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
