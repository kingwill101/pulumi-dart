// ignore_for_file: unused_element, unnecessary_cast

class InstanceLoggingConfigurationAccessLogsKinesisDataFirehose {
  /// The name of the delivery stream.
  final String? deliveryStream;

  /// Indicates whether logging is enabled.
  final bool enabled;

  /// Creates a new [InstanceLoggingConfigurationAccessLogsKinesisDataFirehose].
  /// [deliveryStream] The name of the delivery stream.
  /// [enabled] Indicates whether logging is enabled.
  InstanceLoggingConfigurationAccessLogsKinesisDataFirehose({
    this.deliveryStream,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryStream': ?deliveryStream,
      'enabled': enabled,
    };
  }

  factory InstanceLoggingConfigurationAccessLogsKinesisDataFirehose.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceLoggingConfigurationAccessLogsKinesisDataFirehose(
      deliveryStream: map['deliveryStream'] == null
          ? null
          : map['deliveryStream'] as String,
      enabled: map['enabled'] as bool,
    );
  }
}
