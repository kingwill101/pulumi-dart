// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_replication_configuration_rule_destination_replication_time_time.dart';

class GetBucketReplicationConfigurationRuleDestinationReplicationTime {
  final String status;
  final List<
    GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime
  >
  times;

  /// Creates a new [GetBucketReplicationConfigurationRuleDestinationReplicationTime].
  /// [status] Required.
  /// [times] Required.
  GetBucketReplicationConfigurationRuleDestinationReplicationTime({
    required this.status,
    required this.times,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'times':
          pulumi.Input.encodeList<
            GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime,
            Map<String, dynamic>
          >(times, (value) => value.toMap()),
    };
  }

  factory GetBucketReplicationConfigurationRuleDestinationReplicationTime.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetBucketReplicationConfigurationRuleDestinationReplicationTime(
      status: map['status'] as String,
      times:
          pulumi.Input.decodeList<
            GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime
          >(
            map['times'],
            (value) =>
                GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
