// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_kinesis_configuration.dart';

/// Input properties used for looking up and filtering Stream resources.
class StreamState {
  /// The ARN of the QLDB Stream.
  final pulumi.Input<String>? arn;
  /// The exclusive date and time that specifies when the stream ends. If you don't define this parameter, the stream runs indefinitely until you cancel it. It must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: `"2019-06-13T21:36:34Z"`.
  final pulumi.Input<String>? exclusiveEndTime;
  /// The inclusive start date and time from which to start streaming journal data. This parameter must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: `"2019-06-13T21:36:34Z"`.  This cannot be in the future and must be before `exclusiveEndTime`.  If you provide a value that is before the ledger's `CreationDateTime`, QLDB effectively defaults it to the ledger's `CreationDateTime`.
  final pulumi.Input<String>? inclusiveStartTime;
  /// The configuration settings of the Kinesis Data Streams destination for your stream request. Documented below.
  final pulumi.Input<StreamKinesisConfiguration>? kinesisConfiguration;
  /// The name of the QLDB ledger.
  final pulumi.Input<String>? ledgerName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a journal stream to write data records to a Kinesis Data Streams resource.
  final pulumi.Input<String>? roleArn;
  /// The name that you want to assign to the QLDB journal stream. User-defined names can help identify and indicate the purpose of a stream.  Your stream name must be unique among other active streams for a given ledger. Stream names have the same naming constraints as ledger names, as defined in the [Amazon QLDB Developer Guide](https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming).
  final pulumi.Input<String>? streamName;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [StreamState].
  /// [arn] The ARN of the QLDB Stream.
  /// [exclusiveEndTime] The exclusive date and time that specifies when the stream ends. If you don't define this parameter, the stream runs indefinitely until you cancel it. It must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: `"2019-06-13T21:36:34Z"`.
  /// [inclusiveStartTime] The inclusive start date and time from which to start streaming journal data. This parameter must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: `"2019-06-13T21:36:34Z"`.  This cannot be in the future and must be before `exclusiveEndTime`.  If you provide a value that is before the ledger's `CreationDateTime`, QLDB effectively defaults it to the ledger's `CreationDateTime`.
  /// [kinesisConfiguration] The configuration settings of the Kinesis Data Streams destination for your stream request. Documented below.
  /// [ledgerName] The name of the QLDB ledger.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a journal stream to write data records to a Kinesis Data Streams resource.
  /// [streamName] The name that you want to assign to the QLDB journal stream. User-defined names can help identify and indicate the purpose of a stream.  Your stream name must be unique among other active streams for a given ledger. Stream names have the same naming constraints as ledger names, as defined in the [Amazon QLDB Developer Guide](https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming).
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const StreamState({
    this.arn,
    this.exclusiveEndTime,
    this.inclusiveStartTime,
    this.kinesisConfiguration,
    this.ledgerName,
    this.region,
    this.roleArn,
    this.streamName,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'exclusiveEndTime': ?exclusiveEndTime,
      'inclusiveStartTime': ?inclusiveStartTime,
      'kinesisConfiguration': ?pulumi.Input.mapOptionalInputValue<StreamKinesisConfiguration, Map<String, dynamic>>(kinesisConfiguration, (value) => value.toMap()),
      'ledgerName': ?ledgerName,
      'region': ?region,
      'roleArn': ?roleArn,
      'streamName': ?streamName,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory StreamState.fromMap(Map<String, dynamic> map) {
    return StreamState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exclusiveEndTime: (() { final guardedValue = map['exclusiveEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inclusiveStartTime: (() { final guardedValue = map['inclusiveStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kinesisConfiguration: (() { final guardedValue = map['kinesisConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamKinesisConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ledgerName: (() { final guardedValue = map['ledgerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamName: (() { final guardedValue = map['streamName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
