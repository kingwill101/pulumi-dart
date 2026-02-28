// ignore_for_file: unused_element, unnecessary_cast

class BucketReplicationConfigRuleDeleteMarkerReplication {
  /// Whether delete markers should be replicated. Either `"Enabled"` or `"Disabled"`.
  final String status;

  /// Creates a new [BucketReplicationConfigRuleDeleteMarkerReplication].
  /// [status] Whether delete markers should be replicated. Either `"Enabled"` or `"Disabled"`.
  BucketReplicationConfigRuleDeleteMarkerReplication({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['status'] = status;
    return map;
  }

  factory BucketReplicationConfigRuleDeleteMarkerReplication.fromMap(
      Map<String, dynamic> map) {
    return BucketReplicationConfigRuleDeleteMarkerReplication(
      status: map['status'] as String,
    );
  }
}
