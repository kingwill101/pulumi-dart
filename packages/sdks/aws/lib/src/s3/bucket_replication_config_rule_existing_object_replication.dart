// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketReplicationConfigRuleExistingObjectReplication {
  /// Whether the existing objects should be replicated. Either `"Enabled"` or `"Disabled"`.
  final pulumi.Input<String> status;

  /// Creates a new [BucketReplicationConfigRuleExistingObjectReplication].
  /// [status] Whether the existing objects should be replicated. Either `"Enabled"` or `"Disabled"`.
  BucketReplicationConfigRuleExistingObjectReplication({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory BucketReplicationConfigRuleExistingObjectReplication.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigRuleExistingObjectReplication(
      status: (map['status'] as String).input(),
    );
  }
}

