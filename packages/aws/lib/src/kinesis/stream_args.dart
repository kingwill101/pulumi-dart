// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_stream_mode_details.dart';

/// {@template pulumi_kinesis_stream_stream_args_doc}
/// The set of arguments for Stream.
/// {@endtemplate}
/// {@macro pulumi_kinesis_stream_stream_args_doc}
class StreamArgs {
  /// The Amazon Resource Name (ARN) specifying the Stream (same as `id`)
  final pulumi.Input<String>? arn;

  /// The encryption type to use. The only acceptable values are `NONE` or `KMS`. The default value is `NONE`.
  final pulumi.Input<String>? encryptionType;

  /// A boolean that indicates all registered consumers should be deregistered from the stream so that the stream can be destroyed without error. The default value is `false`.
  final pulumi.Input<bool>? enforceConsumerDeletion;

  /// The GUID for the customer-managed KMS key to use for encryption. You can also use a Kinesis-owned master key by specifying the alias `alias/aws/kinesis`.
  final pulumi.Input<String>? kmsKeyId;

  /// The maximum size for a single data record in KiB. The minimum value is 1024. The maximum value is 10240.
  final pulumi.Input<int>? maxRecordSizeInKib;

  /// A name to identify the stream. This is unique to the AWS account and region the Stream is created in.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Length of time data records are accessible after they are added to the stream. The maximum value of a stream's retention period is 8760 hours. Minimum value is 24. Default is 24.
  final pulumi.Input<int>? retentionPeriod;

  /// The number of shards that the stream will use. If the `stream_mode` is `PROVISIONED`, this field is required.
  /// Amazon has guidelines for specifying the Stream size that should be referenced when creating a Kinesis stream. See [Amazon Kinesis Streams](https://docs.aws.amazon.com/kinesis/latest/dev/amazon-kinesis-streams.html) for more.
  final pulumi.Input<int>? shardCount;

  /// A list of shard-level CloudWatch metrics which can be enabled for the stream. See [Monitoring with CloudWatch](https://docs.aws.amazon.com/streams/latest/dev/monitoring-with-cloudwatch.html) for more. Note that the value ALL should not be used; instead you should provide an explicit list of metrics you wish to enable.
  final pulumi.Input<List<String>>? shardLevelMetrics;

  /// Indicates the [capacity mode](https://docs.aws.amazon.com/streams/latest/dev/how-do-i-size-a-stream.html) of the data stream. Detailed below.
  final pulumi.Input<StreamStreamModeDetails>? streamModeDetails;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [StreamArgs].
  /// [arn] The Amazon Resource Name (ARN) specifying the Stream (same as `id`)
  /// [encryptionType] The encryption type to use. The only acceptable values are `NONE` or `KMS`. The default value is `NONE`.
  /// [enforceConsumerDeletion] A boolean that indicates all registered consumers should be deregistered from the stream so that the stream can be destroyed without error. The default value is `false`.
  /// [kmsKeyId] The GUID for the customer-managed KMS key to use for encryption. You can also use a Kinesis-owned master key by specifying the alias `alias/aws/kinesis`.
  /// [maxRecordSizeInKib] The maximum size for a single data record in KiB. The minimum value is 1024. The maximum value is 10240.
  /// [name] A name to identify the stream. This is unique to the AWS account and region the Stream is created in.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionPeriod] Length of time data records are accessible after they are added to the stream. The maximum value of a stream's retention period is 8760 hours. Minimum value is 24. Default is 24.
  /// [shardCount] The number of shards that the stream will use. If the `stream_mode` is `PROVISIONED`, this field is required.
  /// [shardLevelMetrics] A list of shard-level CloudWatch metrics which can be enabled for the stream. See [Monitoring with CloudWatch](https://docs.aws.amazon.com/streams/latest/dev/monitoring-with-cloudwatch.html) for more. Note that the value ALL should not be used; instead you should provide an explicit list of metrics you wish to enable.
  /// [streamModeDetails] Indicates the [capacity mode](https://docs.aws.amazon.com/streams/latest/dev/how-do-i-size-a-stream.html) of the data stream. Detailed below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  StreamArgs({
    String? arn,
    String? encryptionType,
    bool? enforceConsumerDeletion,
    String? kmsKeyId,
    int? maxRecordSizeInKib,
    String? name,
    String? region,
    int? retentionPeriod,
    int? shardCount,
    List<String>? shardLevelMetrics,
    StreamStreamModeDetails? streamModeDetails,
    Map<String, String>? tags,
  })  : arn = pulumi.Input.asOptionalInput<String>(arn),
        encryptionType = pulumi.Input.asOptionalInput<String>(encryptionType),
        enforceConsumerDeletion =
            pulumi.Input.asOptionalInput<bool>(enforceConsumerDeletion),
        kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
        maxRecordSizeInKib =
            pulumi.Input.asOptionalInput<int>(maxRecordSizeInKib),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        retentionPeriod = pulumi.Input.asOptionalInput<int>(retentionPeriod),
        shardCount = pulumi.Input.asOptionalInput<int>(shardCount),
        shardLevelMetrics =
            pulumi.Input.asOptionalInput<List<String>>(shardLevelMetrics),
        streamModeDetails =
            pulumi.Input.asOptionalInput<StreamStreamModeDetails>(
                streamModeDetails),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final encryptionTypeValue = encryptionType;
    if (encryptionTypeValue != null) {
      map['encryptionType'] = encryptionTypeValue;
    }
    final enforceConsumerDeletionValue = enforceConsumerDeletion;
    if (enforceConsumerDeletionValue != null) {
      map['enforceConsumerDeletion'] = enforceConsumerDeletionValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final maxRecordSizeInKibValue = maxRecordSizeInKib;
    if (maxRecordSizeInKibValue != null) {
      map['maxRecordSizeInKib'] = maxRecordSizeInKibValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final retentionPeriodValue = retentionPeriod;
    if (retentionPeriodValue != null) {
      map['retentionPeriod'] = retentionPeriodValue;
    }
    final shardCountValue = shardCount;
    if (shardCountValue != null) {
      map['shardCount'] = shardCountValue;
    }
    final shardLevelMetricsValue = shardLevelMetrics;
    if (shardLevelMetricsValue != null) {
      map['shardLevelMetrics'] = shardLevelMetricsValue;
    }
    final streamModeDetailsValue = streamModeDetails;
    if (streamModeDetailsValue != null) {
      map['streamModeDetails'] = pulumi.Input.mapOptionalInputValue<
              StreamStreamModeDetails, Map<String, dynamic>>(
          streamModeDetailsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory StreamArgs.fromMap(Map<String, dynamic> map) {
    return StreamArgs(
      arn: map['arn'] == null ? null : map['arn'] as String,
      encryptionType: map['encryptionType'] == null
          ? null
          : map['encryptionType'] as String,
      enforceConsumerDeletion: map['enforceConsumerDeletion'] == null
          ? null
          : map['enforceConsumerDeletion'] as bool,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      maxRecordSizeInKib: map['maxRecordSizeInKib'] == null
          ? null
          : map['maxRecordSizeInKib'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      retentionPeriod:
          map['retentionPeriod'] == null ? null : map['retentionPeriod'] as int,
      shardCount: map['shardCount'] == null ? null : map['shardCount'] as int,
      shardLevelMetrics: map['shardLevelMetrics'] == null
          ? null
          : (map['shardLevelMetrics'] as List).cast<String>(),
      streamModeDetails: map['streamModeDetails'] == null
          ? null
          : StreamStreamModeDetails.fromMap(
              (map['streamModeDetails'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
