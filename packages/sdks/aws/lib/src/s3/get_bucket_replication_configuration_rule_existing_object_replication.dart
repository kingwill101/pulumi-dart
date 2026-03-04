// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketReplicationConfigurationRuleExistingObjectReplication {
  final pulumi.Input<String> status;

  /// Creates a new [GetBucketReplicationConfigurationRuleExistingObjectReplication].
  /// [status] Required.
  GetBucketReplicationConfigurationRuleExistingObjectReplication({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'status': status};
  }

  factory GetBucketReplicationConfigurationRuleExistingObjectReplication.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetBucketReplicationConfigurationRuleExistingObjectReplication(
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
