// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_stream_stream_mode_detail/get_stream_stream_mode_detail.dart';

/// Result data returned by getStream.
class GetStreamResult {
  /// ARN of the Kinesis Stream (same as <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>).
  final String arn;

  /// List of shard ids in the CLOSED state. See [Shard State](https://docs.aws.amazon.com/streams/latest/dev/kinesis-using-sdk-java-after-resharding.html#kinesis-using-sdk-java-resharding-data-routing) for more.
  final List<String> closedShards;

  /// Approximate UNIX timestamp that the stream was created.
  final int creationTimestamp;

  /// Encryption type used.
  final String encryptionType;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// GUID for the customer-managed AWS KMS key to use for encryption.
  final String kmsKeyId;

  /// The maximum size for a single data record in KiB.
  final int maxRecordSizeInKib;

  /// Name of the Kinesis Stream.
  final String name;

  /// List of shard ids in the OPEN state. See [Shard State](https://docs.aws.amazon.com/streams/latest/dev/kinesis-using-sdk-java-after-resharding.html#kinesis-using-sdk-java-resharding-data-routing) for more.
  final List<String> openShards;
  final String region;

  /// Length of time (in hours) data records are accessible after they are added to the stream.
  final int retentionPeriod;

  /// List of shard-level CloudWatch metrics which are enabled for the stream. See [Monitoring with CloudWatch](https://docs.aws.amazon.com/streams/latest/dev/monitoring-with-cloudwatch.html) for more.
  final List<String> shardLevelMetrics;

  /// Current status of the stream. The stream status is one of CREATING, DELETING, ACTIVE, or UPDATING.
  final String status;

  /// [Capacity mode](https://docs.aws.amazon.com/streams/latest/dev/how-do-i-size-a-stream.html) of the data stream. Detailed below.
  final List<GetStreamStreamModeDetail> streamModeDetails;

  /// Map of tags to assigned to the stream.
  final Map<String, String> tags;

  GetStreamResult({
    required this.arn,
    required this.closedShards,
    required this.creationTimestamp,
    required this.encryptionType,
    required this.id,
    required this.kmsKeyId,
    required this.maxRecordSizeInKib,
    required this.name,
    required this.openShards,
    required this.region,
    required this.retentionPeriod,
    required this.shardLevelMetrics,
    required this.status,
    required this.streamModeDetails,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['closedShards'] = closedShards;
    map['creationTimestamp'] = creationTimestamp;
    map['encryptionType'] = encryptionType;
    map['id'] = id;
    map['kmsKeyId'] = kmsKeyId;
    map['maxRecordSizeInKib'] = maxRecordSizeInKib;
    map['name'] = name;
    map['openShards'] = openShards;
    map['region'] = region;
    map['retentionPeriod'] = retentionPeriod;
    map['shardLevelMetrics'] = shardLevelMetrics;
    map['status'] = status;
    map['streamModeDetails'] =
        Input.encodeList<GetStreamStreamModeDetail, Map<String, dynamic>>(
            streamModeDetails, (value) => value.toMap());
    map['tags'] = tags;
    return map;
  }

  factory GetStreamResult.fromMap(Map<String, dynamic> map) {
    return GetStreamResult(
      arn: map['arn'] as String,
      closedShards: (map['closedShards'] as List).cast<String>(),
      creationTimestamp: map['creationTimestamp'] as int,
      encryptionType: map['encryptionType'] as String,
      id: map['id'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      maxRecordSizeInKib: map['maxRecordSizeInKib'] as int,
      name: map['name'] as String,
      openShards: (map['openShards'] as List).cast<String>(),
      region: map['region'] as String,
      retentionPeriod: map['retentionPeriod'] as int,
      shardLevelMetrics: (map['shardLevelMetrics'] as List).cast<String>(),
      status: map['status'] as String,
      streamModeDetails: Input.decodeList<GetStreamStreamModeDetail>(
          map['streamModeDetails'],
          (value) => GetStreamStreamModeDetail.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
