// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirehoseDeliveryStreamHttpEndpointConfigurationCloudwatchLoggingOptions {
  /// Enables or disables the logging. Defaults to `false`.
  final pulumi.Input<bool>? enabled;
  /// The CloudWatch group name for logging. This value is required if `enabled` is true.
  final pulumi.Input<String>? logGroupName;
  /// The CloudWatch log stream name for logging. This value is required if `enabled` is true.
  final pulumi.Input<String>? logStreamName;

  /// Creates a new [FirehoseDeliveryStreamHttpEndpointConfigurationCloudwatchLoggingOptions].
  /// [enabled] Enables or disables the logging. Defaults to `false`.
  /// [logGroupName] The CloudWatch group name for logging. This value is required if `enabled` is true.
  /// [logStreamName] The CloudWatch log stream name for logging. This value is required if `enabled` is true.
  FirehoseDeliveryStreamHttpEndpointConfigurationCloudwatchLoggingOptions({
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

  factory FirehoseDeliveryStreamHttpEndpointConfigurationCloudwatchLoggingOptions.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamHttpEndpointConfigurationCloudwatchLoggingOptions(
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      logGroupName: map['logGroupName'] == null ? null : ((map['logGroupName'] as String).input()).input(),
      logStreamName: map['logStreamName'] == null ? null : ((map['logStreamName'] as String).input()).input(),
    );
  }
}

