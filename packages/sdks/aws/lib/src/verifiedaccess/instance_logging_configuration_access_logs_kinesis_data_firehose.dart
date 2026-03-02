// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceLoggingConfigurationAccessLogsKinesisDataFirehose {
  /// The name of the delivery stream.
  final pulumi.Input<String>? deliveryStream;
  /// Indicates whether logging is enabled.
  final pulumi.Input<bool> enabled;

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

  factory InstanceLoggingConfigurationAccessLogsKinesisDataFirehose.fromMap(Map<String, dynamic> map) {
    return InstanceLoggingConfigurationAccessLogsKinesisDataFirehose(
      deliveryStream: map['deliveryStream'] == null ? null : (map['deliveryStream'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

