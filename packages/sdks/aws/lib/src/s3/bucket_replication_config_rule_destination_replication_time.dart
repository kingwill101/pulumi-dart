// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_replication_config_rule_destination_replication_time_time.dart';

class BucketReplicationConfigRuleDestinationReplicationTime {
  /// Status of the Replication Time Control. Either `"Enabled"` or `"Disabled"`.
  final pulumi.Input<String> status;
  /// Configuration block specifying the time by which replication should be complete for all objects and operations on objects. See below.
  final pulumi.Input<BucketReplicationConfigRuleDestinationReplicationTimeTime> time;

  /// Creates a new [BucketReplicationConfigRuleDestinationReplicationTime].
  /// [status] Status of the Replication Time Control. Either `"Enabled"` or `"Disabled"`.
  /// [time] Configuration block specifying the time by which replication should be complete for all objects and operations on objects. See below.
  BucketReplicationConfigRuleDestinationReplicationTime({
    required this.status,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'time': pulumi.Input.mapInputValue<BucketReplicationConfigRuleDestinationReplicationTimeTime, Map<String, dynamic>>(time, (value) => value.toMap()),
    };
  }

  factory BucketReplicationConfigRuleDestinationReplicationTime.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigRuleDestinationReplicationTime(
      status: pulumi.Input.fromValue(map['status'] as String),
      time: pulumi.Input.fromValue(BucketReplicationConfigRuleDestinationReplicationTimeTime.fromMap((map['time']! as Map).cast<String, dynamic>())),
    );
  }
}

