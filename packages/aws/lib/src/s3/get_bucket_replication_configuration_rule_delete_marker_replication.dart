// ignore_for_file: unused_element, unnecessary_cast


class GetBucketReplicationConfigurationRuleDeleteMarkerReplication {
  final String status;

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
      status: map['status'] as String,
    );
  }
}

