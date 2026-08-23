// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketReplicationConfigRuleDeleteMarkerReplication {
  /// Whether delete markers should be replicated. Either `"Enabled"` or `"Disabled"`.
  final pulumi.Input<String> status;

  /// Creates a new [BucketReplicationConfigRuleDeleteMarkerReplication].
  /// [status] Whether delete markers should be replicated. Either `"Enabled"` or `"Disabled"`.
  const BucketReplicationConfigRuleDeleteMarkerReplication({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory BucketReplicationConfigRuleDeleteMarkerReplication.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigRuleDeleteMarkerReplication(
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
