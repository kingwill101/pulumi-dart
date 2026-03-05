// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamKinesisConfiguration {
  /// Enables QLDB to publish multiple data records in a single Kinesis Data Streams record, increasing the number of records sent per API call. Default: `true`.
  final pulumi.Input<bool>? aggregationEnabled;
  /// The Amazon Resource Name (ARN) of the Kinesis Data Streams resource.
  final pulumi.Input<String> streamArn;

  /// Creates a new [StreamKinesisConfiguration].
  /// [aggregationEnabled] Enables QLDB to publish multiple data records in a single Kinesis Data Streams record, increasing the number of records sent per API call. Default: `true`.
  /// [streamArn] The Amazon Resource Name (ARN) of the Kinesis Data Streams resource.
  StreamKinesisConfiguration({
    this.aggregationEnabled,
    required this.streamArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationEnabled': ?aggregationEnabled,
      'streamArn': streamArn,
    };
  }

  factory StreamKinesisConfiguration.fromMap(Map<String, dynamic> map) {
    return StreamKinesisConfiguration(
      aggregationEnabled: (() { final guardedValue = map['aggregationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      streamArn: pulumi.Input.fromValue(map['streamArn'] as String),
    );
  }
}

