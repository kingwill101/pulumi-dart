// ignore_for_file: unused_element, unnecessary_cast

class GetBucketReplicationConfigurationRuleExistingObjectReplication {
  final String status;

  GetBucketReplicationConfigurationRuleExistingObjectReplication({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['status'] = status;
    return map;
  }

  factory GetBucketReplicationConfigurationRuleExistingObjectReplication.fromMap(
      Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleExistingObjectReplication(
      status: map['status'] as String,
    );
  }
}
