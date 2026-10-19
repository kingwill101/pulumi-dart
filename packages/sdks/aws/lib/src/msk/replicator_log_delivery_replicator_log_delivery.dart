// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replicator_log_delivery_replicator_log_delivery_cloudwatch_logs.dart';
import 'replicator_log_delivery_replicator_log_delivery_firehose.dart';
import 'replicator_log_delivery_replicator_log_delivery_s3.dart';

class ReplicatorLogDeliveryReplicatorLogDelivery {
  /// Configuration block for replicator log delivery to Amazon CloudWatch Logs. See `cloudwatchLogs` Block below.
  final pulumi.Input<ReplicatorLogDeliveryReplicatorLogDeliveryCloudwatchLogs?>? cloudwatchLogs;
  /// Configuration block for replicator log delivery to Amazon Data Firehose. See `firehose` Block below.
  final pulumi.Input<ReplicatorLogDeliveryReplicatorLogDeliveryFirehose?>? firehose;
  /// Configuration block for replicator log delivery to Amazon S3. See `s3` Block below.
  final pulumi.Input<ReplicatorLogDeliveryReplicatorLogDeliveryS3?>? s3;

  /// Creates a new [ReplicatorLogDeliveryReplicatorLogDelivery].
  /// [cloudwatchLogs] Configuration block for replicator log delivery to Amazon CloudWatch Logs. See `cloudwatchLogs` Block below.
  /// [firehose] Configuration block for replicator log delivery to Amazon Data Firehose. See `firehose` Block below.
  /// [s3] Configuration block for replicator log delivery to Amazon S3. See `s3` Block below.
  const ReplicatorLogDeliveryReplicatorLogDelivery({
    this.cloudwatchLogs,
    this.firehose,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogs': ?pulumi.Input.mapOptionalInputValue<ReplicatorLogDeliveryReplicatorLogDeliveryCloudwatchLogs, Map<String, dynamic>>(cloudwatchLogs, (value) => value.toMap()),
      'firehose': ?pulumi.Input.mapOptionalInputValue<ReplicatorLogDeliveryReplicatorLogDeliveryFirehose, Map<String, dynamic>>(firehose, (value) => value.toMap()),
      's3': ?pulumi.Input.mapOptionalInputValue<ReplicatorLogDeliveryReplicatorLogDeliveryS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory ReplicatorLogDeliveryReplicatorLogDelivery.fromMap(Map<String, dynamic> map) {
    return ReplicatorLogDeliveryReplicatorLogDelivery(
      cloudwatchLogs: (() { final guardedValue = map['cloudwatchLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicatorLogDeliveryReplicatorLogDeliveryCloudwatchLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      firehose: (() { final guardedValue = map['firehose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicatorLogDeliveryReplicatorLogDeliveryFirehose.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicatorLogDeliveryReplicatorLogDeliveryS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
