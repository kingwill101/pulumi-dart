// ignore_for_file: unused_element, unnecessary_cast

class GetBucketReplicationConfigurationRuleDeleteMarkerReplication {
  final String status;

  GetBucketReplicationConfigurationRuleDeleteMarkerReplication({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['status'] = status;
    return map;
  }

  factory GetBucketReplicationConfigurationRuleDeleteMarkerReplication.fromMap(
      Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleDeleteMarkerReplication(
      status: map['status'] as String,
    );
  }
}
