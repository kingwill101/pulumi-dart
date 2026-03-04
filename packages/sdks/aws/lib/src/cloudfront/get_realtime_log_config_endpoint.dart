// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_realtime_log_config_endpoint_kinesis_stream_config.dart';

class GetRealtimeLogConfigEndpoint {
  /// (Required) Amazon Kinesis data stream configuration.
  final pulumi.Input<List<GetRealtimeLogConfigEndpointKinesisStreamConfig>>
  kinesisStreamConfigs;

  /// (Required) Type of data stream where real-time log data is sent. The only valid value is `Kinesis`.
  final pulumi.Input<String> streamType;

  /// Creates a new [GetRealtimeLogConfigEndpoint].
  /// [kinesisStreamConfigs] (Required) Amazon Kinesis data stream configuration.
  /// [streamType] (Required) Type of data stream where real-time log data is sent. The only valid value is `Kinesis`.
  GetRealtimeLogConfigEndpoint({
    required this.kinesisStreamConfigs,
    required this.streamType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kinesisStreamConfigs':
          pulumi.Input.mapInputValue<
            List<GetRealtimeLogConfigEndpointKinesisStreamConfig>,
            List<Map<String, dynamic>>
          >(
            kinesisStreamConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetRealtimeLogConfigEndpointKinesisStreamConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'streamType': streamType,
    };
  }

  factory GetRealtimeLogConfigEndpoint.fromMap(Map<String, dynamic> map) {
    return GetRealtimeLogConfigEndpoint(
      kinesisStreamConfigs: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetRealtimeLogConfigEndpointKinesisStreamConfig>(
          map['kinesisStreamConfigs']!,
          (value) => GetRealtimeLogConfigEndpointKinesisStreamConfig.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      streamType: pulumi.Input.fromValue(map['streamType'] as String),
    );
  }
}
