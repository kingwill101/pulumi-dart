// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_replication_config_rule_destination_replication_time_time.dart';

class BucketReplicationConfigRuleDestinationReplicationTime {
  /// Status of the Replication Time Control. Either `"Enabled"` or `"Disabled"`.
  final String status;

  /// Configuration block specifying the time by which replication should be complete for all objects and operations on objects. See below.
  final BucketReplicationConfigRuleDestinationReplicationTimeTime time;

  /// Creates a new [BucketReplicationConfigRuleDestinationReplicationTime].
  /// [status] Status of the Replication Time Control. Either `"Enabled"` or `"Disabled"`.
  /// [time] Configuration block specifying the time by which replication should be complete for all objects and operations on objects. See below.
  BucketReplicationConfigRuleDestinationReplicationTime({
    required this.status,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['time'] = time.toMap();
    return map;
  }

  factory BucketReplicationConfigRuleDestinationReplicationTime.fromMap(
      Map<String, dynamic> map) {
    return BucketReplicationConfigRuleDestinationReplicationTime(
      status: map['status'] as String,
      time: BucketReplicationConfigRuleDestinationReplicationTimeTime.fromMap(
          (map['time'] as Map).cast<String, dynamic>()),
    );
  }
}
