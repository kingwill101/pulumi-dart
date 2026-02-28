// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_realtime_log_config_endpoint_kinesis_stream_config.dart';

class GetRealtimeLogConfigEndpoint {
  /// (Required) Amazon Kinesis data stream configuration.
  final List<GetRealtimeLogConfigEndpointKinesisStreamConfig>
      kinesisStreamConfigs;

  /// (Required) Type of data stream where real-time log data is sent. The only valid value is `Kinesis`.
  final String streamType;

  /// Creates a new [GetRealtimeLogConfigEndpoint].
  /// [kinesisStreamConfigs] (Required) Amazon Kinesis data stream configuration.
  /// [streamType] (Required) Type of data stream where real-time log data is sent. The only valid value is `Kinesis`.
  GetRealtimeLogConfigEndpoint({
    required this.kinesisStreamConfigs,
    required this.streamType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kinesisStreamConfigs'] = pulumi.Input.encodeList<
        GetRealtimeLogConfigEndpointKinesisStreamConfig,
        Map<String, dynamic>>(kinesisStreamConfigs, (value) => value.toMap());
    map['streamType'] = streamType;
    return map;
  }

  factory GetRealtimeLogConfigEndpoint.fromMap(Map<String, dynamic> map) {
    return GetRealtimeLogConfigEndpoint(
      kinesisStreamConfigs: pulumi.Input.decodeList<
              GetRealtimeLogConfigEndpointKinesisStreamConfig>(
          map['kinesisStreamConfigs'],
          (value) => GetRealtimeLogConfigEndpointKinesisStreamConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      streamType: map['streamType'] as String,
    );
  }
}
