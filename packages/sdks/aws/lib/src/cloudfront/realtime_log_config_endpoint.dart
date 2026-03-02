// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'realtime_log_config_endpoint_kinesis_stream_config.dart';

class RealtimeLogConfigEndpoint {
  /// The Amazon Kinesis data stream configuration.
  final pulumi.Input<RealtimeLogConfigEndpointKinesisStreamConfig> kinesisStreamConfig;
  /// The type of data stream where real-time log data is sent. The only valid value is `Kinesis`.
  final pulumi.Input<String> streamType;

  /// Creates a new [RealtimeLogConfigEndpoint].
  /// [kinesisStreamConfig] The Amazon Kinesis data stream configuration.
  /// [streamType] The type of data stream where real-time log data is sent. The only valid value is `Kinesis`.
  RealtimeLogConfigEndpoint({
    required this.kinesisStreamConfig,
    required this.streamType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kinesisStreamConfig': pulumi.Input.mapInputValue<RealtimeLogConfigEndpointKinesisStreamConfig, Map<String, dynamic>>(kinesisStreamConfig, (value) => value.toMap()),
      'streamType': streamType,
    };
  }

  factory RealtimeLogConfigEndpoint.fromMap(Map<String, dynamic> map) {
    return RealtimeLogConfigEndpoint(
      kinesisStreamConfig: (RealtimeLogConfigEndpointKinesisStreamConfig.fromMap((map['kinesisStreamConfig'] as Map).cast<String, dynamic>())).input(),
      streamType: (map['streamType'] as String).input(),
    );
  }
}

