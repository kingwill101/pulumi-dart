// ignore_for_file: unused_element, unnecessary_cast

class InstanceLoggingConfigurationAccessLogsKinesisDataFirehose {
  /// The name of the delivery stream.
  final String? deliveryStream;

  /// Indicates whether logging is enabled.
  final bool enabled;

  InstanceLoggingConfigurationAccessLogsKinesisDataFirehose({
    this.deliveryStream,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deliveryStreamValue = deliveryStream;
    if (deliveryStreamValue != null) {
      map['deliveryStream'] = deliveryStreamValue;
    }
    map['enabled'] = enabled;
    return map;
  }

  factory InstanceLoggingConfigurationAccessLogsKinesisDataFirehose.fromMap(
      Map<String, dynamic> map) {
    return InstanceLoggingConfigurationAccessLogsKinesisDataFirehose(
      deliveryStream: map['deliveryStream'] == null
          ? null
          : map['deliveryStream'] as String,
      enabled: map['enabled'] as bool,
    );
  }
}
