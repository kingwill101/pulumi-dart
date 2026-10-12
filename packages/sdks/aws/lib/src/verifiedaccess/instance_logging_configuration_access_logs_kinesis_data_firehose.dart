// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceLoggingConfigurationAccessLogsKinesisDataFirehose {
  /// Name of the delivery stream.
  final pulumi.Input<String?>? deliveryStream;
  /// Whether logging is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [InstanceLoggingConfigurationAccessLogsKinesisDataFirehose].
  /// [deliveryStream] Name of the delivery stream.
  /// [enabled] Whether logging is enabled.
  const InstanceLoggingConfigurationAccessLogsKinesisDataFirehose({
    this.deliveryStream,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryStream': ?deliveryStream,
      'enabled': enabled,
    };
  }

  factory InstanceLoggingConfigurationAccessLogsKinesisDataFirehose.fromMap(Map<String, dynamic> map) {
    return InstanceLoggingConfigurationAccessLogsKinesisDataFirehose(
      deliveryStream: (() { final guardedValue = map['deliveryStream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
