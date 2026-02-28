// ignore_for_file: unused_element, unnecessary_cast

class BucketReplicationConfigRuleExistingObjectReplication {
  /// Whether the existing objects should be replicated. Either `"Enabled"` or `"Disabled"`.
  final String status;

  /// Creates a new [BucketReplicationConfigRuleExistingObjectReplication].
  /// [status] Whether the existing objects should be replicated. Either `"Enabled"` or `"Disabled"`.
  BucketReplicationConfigRuleExistingObjectReplication({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['status'] = status;
    return map;
  }

  factory BucketReplicationConfigRuleExistingObjectReplication.fromMap(
      Map<String, dynamic> map) {
    return BucketReplicationConfigRuleExistingObjectReplication(
      status: map['status'] as String,
    );
  }
}
