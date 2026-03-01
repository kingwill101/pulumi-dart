// ignore_for_file: unused_element, unnecessary_cast


class GetBucketReplicationConfigurationRuleExistingObjectReplication {
  final String status;

  /// Creates a new [GetBucketReplicationConfigurationRuleExistingObjectReplication].
  /// [status] Required.
  GetBucketReplicationConfigurationRuleExistingObjectReplication({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory GetBucketReplicationConfigurationRuleExistingObjectReplication.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleExistingObjectReplication(
      status: map['status'] as String,
    );
  }
}

