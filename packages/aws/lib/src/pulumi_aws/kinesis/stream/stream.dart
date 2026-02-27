import 'package:pulumi/pulumi.dart' as pulumi;
import '../stream_stream_mode_details/stream_stream_mode_details.dart';
import 'stream_args.dart';

/// Provides a Kinesis Stream resource. Amazon Kinesis is a managed service that
/// scales elastically for real-time processing of streaming big data.
///
/// For more details, see the [Amazon Kinesis Documentation](https://aws.amazon.com/documentation/kinesis/).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Kinesis Streams using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:kinesis/stream:Stream test_stream pulumi-kinesis-test
/// ```
///
/// [1]: https://aws.amazon.com/documentation/kinesis/
/// [2]: https://docs.aws.amazon.com/kinesis/latest/dev/amazon-kinesis-streams.html
/// [3]: https://docs.aws.amazon.com/streams/latest/dev/monitoring-with-cloudwatch.html
class Stream extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) specifying the Stream (same as `id`)
  late final pulumi.Output<String> arn;

  /// The encryption type to use. The only acceptable values are `NONE` or `KMS`. The default value is `NONE`.
  late final pulumi.Output<String?> encryptionType;

  /// A boolean that indicates all registered consumers should be deregistered from the stream so that the stream can be destroyed without error. The default value is `false`.
  late final pulumi.Output<bool?> enforceConsumerDeletion;

  /// The GUID for the customer-managed KMS key to use for encryption. You can also use a Kinesis-owned master key by specifying the alias `alias/aws/kinesis`.
  late final pulumi.Output<String?> kmsKeyId;

  /// The maximum size for a single data record in KiB. The minimum value is 1024. The maximum value is 10240.
  late final pulumi.Output<int> maxRecordSizeInKib;

  /// A name to identify the stream. This is unique to the AWS account and region the Stream is created in.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Length of time data records are accessible after they are added to the stream. The maximum value of a stream's retention period is 8760 hours. Minimum value is 24. Default is 24.
  late final pulumi.Output<int?> retentionPeriod;

  /// The number of shards that the stream will use. If the `stream_mode` is `PROVISIONED`, this field is required.
  /// Amazon has guidelines for specifying the Stream size that should be referenced when creating a Kinesis stream. See [Amazon Kinesis Streams](https://docs.aws.amazon.com/kinesis/latest/dev/amazon-kinesis-streams.html) for more.
  late final pulumi.Output<int?> shardCount;

  /// A list of shard-level CloudWatch metrics which can be enabled for the stream. See [Monitoring with CloudWatch](https://docs.aws.amazon.com/streams/latest/dev/monitoring-with-cloudwatch.html) for more. Note that the value ALL should not be used; instead you should provide an explicit list of metrics you wish to enable.
  late final pulumi.Output<List<String>?> shardLevelMetrics;

  /// Indicates the [capacity mode](https://docs.aws.amazon.com/streams/latest/dev/how-do-i-size-a-stream.html) of the data stream. Detailed below.
  late final pulumi.Output<StreamStreamModeDetails> streamModeDetails;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Stream(
    String name, {
    StreamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kinesis/stream:Stream',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.encryptionType = registerOutput<String?>('encryptionType');
    this.enforceConsumerDeletion =
        registerOutput<bool?>('enforceConsumerDeletion');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.maxRecordSizeInKib = registerOutput<int>('maxRecordSizeInKib');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.retentionPeriod = registerOutput<int?>('retentionPeriod');
    this.shardCount = registerOutput<int?>('shardCount');
    this.shardLevelMetrics = registerOutput<List<String>?>('shardLevelMetrics');
    this.streamModeDetails =
        registerOutput<StreamStreamModeDetails>('streamModeDetails');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
