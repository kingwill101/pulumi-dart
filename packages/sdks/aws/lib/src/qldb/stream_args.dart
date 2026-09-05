// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_kinesis_configuration.dart';

/// {@template pulumi_qldb_stream_stream_args_doc}
/// The set of arguments for Stream.
/// {@endtemplate}
/// {@macro pulumi_qldb_stream_stream_args_doc}
class StreamArgs {
  /// The exclusive date and time that specifies when the stream ends. If you don't define this parameter, the stream runs indefinitely until you cancel it. It must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: `"2019-06-13T21:36:34Z"`.
  final pulumi.Input<String?>? exclusiveEndTime;
  /// The inclusive start date and time from which to start streaming journal data. This parameter must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: `"2019-06-13T21:36:34Z"`.  This cannot be in the future and must be before `exclusiveEndTime`.  If you provide a value that is before the ledger's `CreationDateTime`, QLDB effectively defaults it to the ledger's `CreationDateTime`.
  final pulumi.Input<String> inclusiveStartTime;
  /// The configuration settings of the Kinesis Data Streams destination for your stream request. Documented below.
  final pulumi.Input<StreamKinesisConfiguration> kinesisConfiguration;
  /// The name of the QLDB ledger.
  final pulumi.Input<String> ledgerName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the IAM role that grants QLDB permissions for a journal stream to write data records to a Kinesis Data Streams resource.
  final pulumi.Input<String> roleArn;
  /// The name that you want to assign to the QLDB journal stream. User-defined names can help identify and indicate the purpose of a stream.  Your stream name must be unique among other active streams for a given ledger. Stream names have the same naming constraints as ledger names, as defined in the [Amazon QLDB Developer Guide](https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming).
  final pulumi.Input<String> streamName;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [StreamArgs].
  /// [exclusiveEndTime] The exclusive date and time that specifies when the stream ends. If you don't define this parameter, the stream runs indefinitely until you cancel it. It must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: `"2019-06-13T21:36:34Z"`.
  /// [inclusiveStartTime] The inclusive start date and time from which to start streaming journal data. This parameter must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: `"2019-06-13T21:36:34Z"`.  This cannot be in the future and must be before `exclusiveEndTime`.  If you provide a value that is before the ledger's `CreationDateTime`, QLDB effectively defaults it to the ledger's `CreationDateTime`.
  /// [kinesisConfiguration] The configuration settings of the Kinesis Data Streams destination for your stream request. Documented below.
  /// [ledgerName] The name of the QLDB ledger.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM role that grants QLDB permissions for a journal stream to write data records to a Kinesis Data Streams resource.
  /// [streamName] The name that you want to assign to the QLDB journal stream. User-defined names can help identify and indicate the purpose of a stream.  Your stream name must be unique among other active streams for a given ledger. Stream names have the same naming constraints as ledger names, as defined in the [Amazon QLDB Developer Guide](https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming).
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const StreamArgs({
    this.exclusiveEndTime,
    required this.inclusiveStartTime,
    required this.kinesisConfiguration,
    required this.ledgerName,
    this.region,
    required this.roleArn,
    required this.streamName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusiveEndTime': ?exclusiveEndTime,
      'inclusiveStartTime': inclusiveStartTime,
      'kinesisConfiguration': pulumi.Input.mapInputValue<StreamKinesisConfiguration, Map<String, dynamic>>(kinesisConfiguration, (value) => value.toMap()),
      'ledgerName': ledgerName,
      'region': ?region,
      'roleArn': roleArn,
      'streamName': streamName,
      'tags': ?tags,
    };
  }

  factory StreamArgs.fromMap(Map<String, dynamic> map) {
    return StreamArgs(
      exclusiveEndTime: (() { final guardedValue = map['exclusiveEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inclusiveStartTime: pulumi.Input.fromValue(map['inclusiveStartTime'] as String),
      kinesisConfiguration: pulumi.Input.fromValue(StreamKinesisConfiguration.fromMap((map['kinesisConfiguration']! as Map).cast<String, dynamic>())),
      ledgerName: pulumi.Input.fromValue(map['ledgerName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      streamName: pulumi.Input.fromValue(map['streamName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
