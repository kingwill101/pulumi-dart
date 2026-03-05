// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModification {
  final pulumi.Input<String> status;

  /// Creates a new [GetBucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModification].
  /// [status] Required.
  GetBucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModification({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory GetBucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModification.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModification(
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

