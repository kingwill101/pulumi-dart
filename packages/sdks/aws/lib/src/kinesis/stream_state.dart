// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_stream_mode_details.dart';

/// Input properties used for looking up and filtering Stream resources.
class StreamState {
  /// The Amazon Resource Name (ARN) specifying the stream (same as `id`).
  final pulumi.Input<String>? arn;
  /// The encryption type to use. The only acceptable values are `NONE` or `KMS`. The default value is `NONE`.
  final pulumi.Input<String>? encryptionType;
  /// A boolean that indicates all registered consumers should be deregistered from the stream so that the stream can be destroyed without error. The default value is `false`.
  final pulumi.Input<bool>? enforceConsumerDeletion;
  /// The identifier for the customer-managed KMS key to use for encryption. This can be a Key ID (UUID), a Key ARN, an Alias Name (prefixed with `alias/`), or an Alias ARN. You can also use a master key owned by Kinesis Data Streams by specifying the alias `aws/kinesis`.
  final pulumi.Input<String>? kmsKeyId;
  /// The maximum size for a single data record in KiB. The minimum value is 1024. The maximum value is 10240.
  final pulumi.Input<int>? maxRecordSizeInKib;
  /// A name to identify the stream. This is unique to the AWS account and region the Stream is created in.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Length of time data records are accessible after they are added to the stream. The maximum value of a stream's retention period is 8760 hours. Minimum value is 24. Default is 24.
  final pulumi.Input<int>? retentionPeriod;
  /// The number of shards that the stream will use. If the `streamMode` is `PROVISIONED`, this field is required. Amazon has guidelines for specifying the Stream size that should be referenced when creating a Kinesis stream. See [Amazon Kinesis Streams](https://docs.aws.amazon.com/kinesis/latest/dev/amazon-kinesis-streams.html) for more.
  final pulumi.Input<int>? shardCount;
  /// A list of shard-level CloudWatch metrics which can be enabled for the stream. See [Monitoring with CloudWatch](https://docs.aws.amazon.com/streams/latest/dev/monitoring-with-cloudwatch.html) for more. Note that the value ALL should not be used; instead you should provide an explicit list of metrics you wish to enable.
  final pulumi.Input<List<String>>? shardLevelMetrics;
  /// Indicates the [capacity mode](https://docs.aws.amazon.com/streams/latest/dev/how-do-i-size-a-stream.html) of the data stream. Detailed below.
  final pulumi.Input<StreamStreamModeDetails>? streamModeDetails;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Target warm throughput in MB/s that the stream should be scaled to handle.
  final pulumi.Input<int>? warmThroughputMibPs;

  /// Creates a new [StreamState].
  /// [arn] The Amazon Resource Name (ARN) specifying the stream (same as `id`).
  /// [encryptionType] The encryption type to use. The only acceptable values are `NONE` or `KMS`. The default value is `NONE`.
  /// [enforceConsumerDeletion] A boolean that indicates all registered consumers should be deregistered from the stream so that the stream can be destroyed without error. The default value is `false`.
  /// [kmsKeyId] The identifier for the customer-managed KMS key to use for encryption. This can be a Key ID (UUID), a Key ARN, an Alias Name (prefixed with `alias/`), or an Alias ARN. You can also use a master key owned by Kinesis Data Streams by specifying the alias `aws/kinesis`.
  /// [maxRecordSizeInKib] The maximum size for a single data record in KiB. The minimum value is 1024. The maximum value is 10240.
  /// [name] A name to identify the stream. This is unique to the AWS account and region the Stream is created in.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionPeriod] Length of time data records are accessible after they are added to the stream. The maximum value of a stream's retention period is 8760 hours. Minimum value is 24. Default is 24.
  /// [shardCount] The number of shards that the stream will use. If the `streamMode` is `PROVISIONED`, this field is required. Amazon has guidelines for specifying the Stream size that should be referenced when creating a Kinesis stream. See [Amazon Kinesis Streams](https://docs.aws.amazon.com/kinesis/latest/dev/amazon-kinesis-streams.html) for more.
  /// [shardLevelMetrics] A list of shard-level CloudWatch metrics which can be enabled for the stream. See [Monitoring with CloudWatch](https://docs.aws.amazon.com/streams/latest/dev/monitoring-with-cloudwatch.html) for more. Note that the value ALL should not be used; instead you should provide an explicit list of metrics you wish to enable.
  /// [streamModeDetails] Indicates the [capacity mode](https://docs.aws.amazon.com/streams/latest/dev/how-do-i-size-a-stream.html) of the data stream. Detailed below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [warmThroughputMibPs] Target warm throughput in MB/s that the stream should be scaled to handle.
  const StreamState({
    this.arn,
    this.encryptionType,
    this.enforceConsumerDeletion,
    this.kmsKeyId,
    this.maxRecordSizeInKib,
    this.name,
    this.region,
    this.retentionPeriod,
    this.shardCount,
    this.shardLevelMetrics,
    this.streamModeDetails,
    this.tags,
    this.tagsAll,
    this.warmThroughputMibPs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'encryptionType': ?encryptionType,
      'enforceConsumerDeletion': ?enforceConsumerDeletion,
      'kmsKeyId': ?kmsKeyId,
      'maxRecordSizeInKib': ?maxRecordSizeInKib,
      'name': ?name,
      'region': ?region,
      'retentionPeriod': ?retentionPeriod,
      'shardCount': ?shardCount,
      'shardLevelMetrics': ?shardLevelMetrics,
      'streamModeDetails': ?pulumi.Input.mapOptionalInputValue<StreamStreamModeDetails, Map<String, dynamic>>(streamModeDetails, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'warmThroughputMibPs': ?warmThroughputMibPs,
    };
  }

  factory StreamState.fromMap(Map<String, dynamic> map) {
    return StreamState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionType: (() { final guardedValue = map['encryptionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enforceConsumerDeletion: (() { final guardedValue = map['enforceConsumerDeletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxRecordSizeInKib: (() { final guardedValue = map['maxRecordSizeInKib']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionPeriod: (() { final guardedValue = map['retentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      shardCount: (() { final guardedValue = map['shardCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      shardLevelMetrics: (() { final guardedValue = map['shardLevelMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      streamModeDetails: (() { final guardedValue = map['streamModeDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamStreamModeDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      warmThroughputMibPs: (() { final guardedValue = map['warmThroughputMibPs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
