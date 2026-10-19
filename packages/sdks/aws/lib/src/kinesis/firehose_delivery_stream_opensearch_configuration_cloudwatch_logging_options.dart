// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirehoseDeliveryStreamOpensearchConfigurationCloudwatchLoggingOptions {
  /// Enables or disables the logging. Defaults to `false`.
  final pulumi.Input<bool?>? enabled;
  /// CloudWatch group name for logging. This value is required if `enabled` is true.
  final pulumi.Input<String?>? logGroupName;
  /// CloudWatch log stream name for logging. This value is required if `enabled` is true.
  final pulumi.Input<String?>? logStreamName;

  /// Creates a new [FirehoseDeliveryStreamOpensearchConfigurationCloudwatchLoggingOptions].
  /// [enabled] Enables or disables the logging. Defaults to `false`.
  /// [logGroupName] CloudWatch group name for logging. This value is required if `enabled` is true.
  /// [logStreamName] CloudWatch log stream name for logging. This value is required if `enabled` is true.
  const FirehoseDeliveryStreamOpensearchConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'logGroupName': ?logGroupName,
      'logStreamName': ?logStreamName,
    };
  }

  factory FirehoseDeliveryStreamOpensearchConfigurationCloudwatchLoggingOptions.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamOpensearchConfigurationCloudwatchLoggingOptions(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logGroupName: (() { final guardedValue = map['logGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logStreamName: (() { final guardedValue = map['logStreamName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
