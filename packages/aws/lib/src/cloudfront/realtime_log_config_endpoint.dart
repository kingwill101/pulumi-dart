// ignore_for_file: unused_element, unnecessary_cast

import 'realtime_log_config_endpoint_kinesis_stream_config.dart';

class RealtimeLogConfigEndpoint {
  /// The Amazon Kinesis data stream configuration.
  final RealtimeLogConfigEndpointKinesisStreamConfig kinesisStreamConfig;

  /// The type of data stream where real-time log data is sent. The only valid value is `Kinesis`.
  final String streamType;

  /// Creates a new [RealtimeLogConfigEndpoint].
  /// [kinesisStreamConfig] The Amazon Kinesis data stream configuration.
  /// [streamType] The type of data stream where real-time log data is sent. The only valid value is `Kinesis`.
  RealtimeLogConfigEndpoint({
    required this.kinesisStreamConfig,
    required this.streamType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kinesisStreamConfig'] = kinesisStreamConfig.toMap();
    map['streamType'] = streamType;
    return map;
  }

  factory RealtimeLogConfigEndpoint.fromMap(Map<String, dynamic> map) {
    return RealtimeLogConfigEndpoint(
      kinesisStreamConfig: RealtimeLogConfigEndpointKinesisStreamConfig.fromMap(
          (map['kinesisStreamConfig'] as Map).cast<String, dynamic>()),
      streamType: map['streamType'] as String,
    );
  }
}
