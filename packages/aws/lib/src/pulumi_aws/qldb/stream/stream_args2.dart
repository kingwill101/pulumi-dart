// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_kinesis_configuration/stream_kinesis_configuration.dart';

/// The set of arguments for Stream.
class StreamArgs2 {
  /// The exclusive date and time that specifies when the stream ends. If you don't define this parameter, the stream runs indefinitely until you cancel it. It must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: `"2019-06-13T21:36:34Z"`.
  final Input<String>? exclusiveEndTime;

  /// The inclusive start date and time from which to start streaming journal data. This parameter must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: `"2019-06-13T21:36:34Z"`.  This cannot be in the future and must be before `exclusive_end_time`.  If you provide a value that is before the ledger's `CreationDateTime`, QLDB effectively defaults it to the ledger's `CreationDateTime`.
  final Input<String> inclusiveStartTime;

  /// The configuration settings of the Kinesis Data Streams destination for your stream request. Documented below.
  final Input<StreamKinesisConfiguration> kinesisConfiguration;

  /// The name of the QLDB ledger.
  final Input<String> ledgerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a journal stream to write data records to a Kinesis Data Streams resource.
  final Input<String> roleArn;

  /// The name that you want to assign to the QLDB journal stream. User-defined names can help identify and indicate the purpose of a stream.  Your stream name must be unique among other active streams for a given ledger. Stream names have the same naming constraints as ledger names, as defined in the [Amazon QLDB Developer Guide](https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming).
  final Input<String> streamName;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  StreamArgs2({
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
    final map = <String, dynamic>{};
    final exclusiveEndTimeValue = exclusiveEndTime;
    if (exclusiveEndTimeValue != null) {
      map['exclusiveEndTime'] = exclusiveEndTimeValue;
    }
    map['inclusiveStartTime'] = inclusiveStartTime;
    map['kinesisConfiguration'] =
        Input.mapInputValue<StreamKinesisConfiguration, Map<String, dynamic>>(
            kinesisConfiguration, (value) => value.toMap());
    map['ledgerName'] = ledgerName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    map['streamName'] = streamName;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory StreamArgs2.fromMap(Map<String, dynamic> map) {
    return StreamArgs2(
      exclusiveEndTime: Input.asOptionalInput<String>(map['exclusiveEndTime']),
      inclusiveStartTime: Input.asInput<String>(map['inclusiveStartTime']),
      kinesisConfiguration: Input.asInput<StreamKinesisConfiguration>(
          map['kinesisConfiguration']),
      ledgerName: Input.asInput<String>(map['ledgerName']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      streamName: Input.asInput<String>(map['streamName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
