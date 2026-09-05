// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stream_stream_mode_detail.dart';
import 'get_stream_warm_throughput.dart';

/// Result data returned by getStream.
class GetStreamResult {
  /// ARN of the Kinesis Stream (same as `id`).
  final String? arn;
  /// List of shard ids in the CLOSED state. See [Shard State](https://docs.aws.amazon.com/streams/latest/dev/kinesis-using-sdk-java-after-resharding.html#kinesis-using-sdk-java-resharding-data-routing) for more.
  final List<String>? closedShards;
  /// Approximate UNIX timestamp that the stream was created.
  final int? creationTimestamp;
  /// Encryption type used.
  final String? encryptionType;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The identifier for the customer-managed KMS key to use for encryption. This can be a Key ID (UUID), a Key ARN, an Alias Name (prefixed with `alias/`), or an Alias ARN.
  final String? kmsKeyId;
  /// The maximum size for a single data record in KiB.
  final int? maxRecordSizeInKib;
  /// Name of the Kinesis Stream.
  final String? name;
  /// List of shard ids in the OPEN state. See [Shard State](https://docs.aws.amazon.com/streams/latest/dev/kinesis-using-sdk-java-after-resharding.html#kinesis-using-sdk-java-resharding-data-routing) for more.
  final List<String>? openShards;
  final String? region;
  /// Length of time (in hours) data records are accessible after they are added to the stream.
  final int? retentionPeriod;
  /// List of shard-level CloudWatch metrics which are enabled for the stream. See [Monitoring with CloudWatch](https://docs.aws.amazon.com/streams/latest/dev/monitoring-with-cloudwatch.html) for more.
  final List<String>? shardLevelMetrics;
  /// Current status of the stream. The stream status is one of CREATING, DELETING, ACTIVE, or UPDATING.
  final String? status;
  /// [Capacity mode](https://docs.aws.amazon.com/streams/latest/dev/how-do-i-size-a-stream.html) of the data stream. Detailed below.
  final List<GetStreamStreamModeDetail>? streamModeDetails;
  /// Map of tags to assigned to the stream.
  final Map<String, String>? tags;
  /// Warm throughput in MB/s for the stream. Detailed below.
  final List<GetStreamWarmThroughput>? warmThroughputs;

  /// Creates a new [GetStreamResult].
  /// [arn] ARN of the Kinesis Stream (same as `id`).
  /// [closedShards] List of shard ids in the CLOSED state. See [Shard State](https://docs.aws.amazon.com/streams/latest/dev/kinesis-using-sdk-java-after-resharding.html#kinesis-using-sdk-java-resharding-data-routing) for more.
  /// [creationTimestamp] Approximate UNIX timestamp that the stream was created.
  /// [encryptionType] Encryption type used.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] The identifier for the customer-managed KMS key to use for encryption. This can be a Key ID (UUID), a Key ARN, an Alias Name (prefixed with `alias/`), or an Alias ARN.
  /// [maxRecordSizeInKib] The maximum size for a single data record in KiB.
  /// [name] Name of the Kinesis Stream.
  /// [openShards] List of shard ids in the OPEN state. See [Shard State](https://docs.aws.amazon.com/streams/latest/dev/kinesis-using-sdk-java-after-resharding.html#kinesis-using-sdk-java-resharding-data-routing) for more.
  /// [region] Optional.
  /// [retentionPeriod] Length of time (in hours) data records are accessible after they are added to the stream.
  /// [shardLevelMetrics] List of shard-level CloudWatch metrics which are enabled for the stream. See [Monitoring with CloudWatch](https://docs.aws.amazon.com/streams/latest/dev/monitoring-with-cloudwatch.html) for more.
  /// [status] Current status of the stream. The stream status is one of CREATING, DELETING, ACTIVE, or UPDATING.
  /// [streamModeDetails] [Capacity mode](https://docs.aws.amazon.com/streams/latest/dev/how-do-i-size-a-stream.html) of the data stream. Detailed below.
  /// [tags] Map of tags to assigned to the stream.
  /// [warmThroughputs] Warm throughput in MB/s for the stream. Detailed below.
  const GetStreamResult({
    this.arn,
    this.closedShards,
    this.creationTimestamp,
    this.encryptionType,
    this.id,
    this.kmsKeyId,
    this.maxRecordSizeInKib,
    this.name,
    this.openShards,
    this.region,
    this.retentionPeriod,
    this.shardLevelMetrics,
    this.status,
    this.streamModeDetails,
    this.tags,
    this.warmThroughputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'closedShards': ?closedShards,
      'creationTimestamp': ?creationTimestamp,
      'encryptionType': ?encryptionType,
      'id': ?id,
      'kmsKeyId': ?kmsKeyId,
      'maxRecordSizeInKib': ?maxRecordSizeInKib,
      'name': ?name,
      'openShards': ?openShards,
      'region': ?region,
      'retentionPeriod': ?retentionPeriod,
      'shardLevelMetrics': ?shardLevelMetrics,
      'status': ?status,
      'streamModeDetails': ?(() { final guardedValue = streamModeDetails; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetStreamStreamModeDetail, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'warmThroughputs': ?(() { final guardedValue = warmThroughputs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetStreamWarmThroughput, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetStreamResult.fromMap(Map<String, dynamic> map) {
    return GetStreamResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      closedShards: (() { final guardedValue = map['closedShards']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      encryptionType: (() { final guardedValue = map['encryptionType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxRecordSizeInKib: (() { final guardedValue = map['maxRecordSizeInKib']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      openShards: (() { final guardedValue = map['openShards']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retentionPeriod: (() { final guardedValue = map['retentionPeriod']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      shardLevelMetrics: (() { final guardedValue = map['shardLevelMetrics']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      streamModeDetails: (() { final guardedValue = map['streamModeDetails']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetStreamStreamModeDetail>(guardedValue, (value) => GetStreamStreamModeDetail.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      warmThroughputs: (() { final guardedValue = map['warmThroughputs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetStreamWarmThroughput>(guardedValue, (value) => GetStreamWarmThroughput.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
