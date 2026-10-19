// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelLoggingInfoFirehose {
  /// Name of the Kinesis Data Firehose delivery stream that receives the logs.
  final pulumi.Input<String?>? deliveryStream;
  /// Whether the Firehose destination is enabled.
  ///
  /// The following arguments are optional:
  final pulumi.Input<bool> enabled;

  /// Creates a new [ChannelLoggingInfoFirehose].
  /// [deliveryStream] Name of the Kinesis Data Firehose delivery stream that receives the logs.
  /// [enabled] Whether the Firehose destination is enabled.
  const ChannelLoggingInfoFirehose({
    this.deliveryStream,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryStream': ?deliveryStream,
      'enabled': enabled,
    };
  }

  factory ChannelLoggingInfoFirehose.fromMap(Map<String, dynamic> map) {
    return ChannelLoggingInfoFirehose(
      deliveryStream: (() { final guardedValue = map['deliveryStream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
