// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketReplicationConfigurationRuleDeleteMarkerReplication {
  final pulumi.Input<String> status;

  /// Creates a new [GetBucketReplicationConfigurationRuleDeleteMarkerReplication].
  /// [status] Required.
  GetBucketReplicationConfigurationRuleDeleteMarkerReplication({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory GetBucketReplicationConfigurationRuleDeleteMarkerReplication.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleDeleteMarkerReplication(
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

