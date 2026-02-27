import 'package:pulumi/pulumi.dart';
import '../stream_kinesis_configuration/stream_kinesis_configuration.dart';
import 'stream_args2.dart';

/// Provides an AWS Quantum Ledger Database (QLDB) Stream resource
class Stream2 extends CustomResource {
  /// The ARN of the QLDB Stream.
  late final Output<String> arn;

  /// The exclusive date and time that specifies when the stream ends. If you don't define this parameter, the stream runs indefinitely until you cancel it. It must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: `"2019-06-13T21:36:34Z"`.
  late final Output<String?> exclusiveEndTime;

  /// The inclusive start date and time from which to start streaming journal data. This parameter must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: `"2019-06-13T21:36:34Z"`.  This cannot be in the future and must be before `exclusive_end_time`.  If you provide a value that is before the ledger's `CreationDateTime`, QLDB effectively defaults it to the ledger's `CreationDateTime`.
  late final Output<String> inclusiveStartTime;

  /// The configuration settings of the Kinesis Data Streams destination for your stream request. Documented below.
  late final Output<StreamKinesisConfiguration> kinesisConfiguration;

  /// The name of the QLDB ledger.
  late final Output<String> ledgerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a journal stream to write data records to a Kinesis Data Streams resource.
  late final Output<String> roleArn;

  /// The name that you want to assign to the QLDB journal stream. User-defined names can help identify and indicate the purpose of a stream.  Your stream name must be unique among other active streams for a given ledger. Stream names have the same naming constraints as ledger names, as defined in the [Amazon QLDB Developer Guide](https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming).
  late final Output<String> streamName;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Stream2(
    String name, {
    StreamArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:qldb/stream:Stream',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.exclusiveEndTime = registerOutput<String?>('exclusiveEndTime');
    this.inclusiveStartTime = registerOutput<String>('inclusiveStartTime');
    this.kinesisConfiguration =
        registerOutput<StreamKinesisConfiguration>('kinesisConfiguration');
    this.ledgerName = registerOutput<String>('ledgerName');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.streamName = registerOutput<String>('streamName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
