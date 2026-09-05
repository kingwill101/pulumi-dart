// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationSetDeliveryOptions {
  /// Maximum amount of time, in seconds, that Amazon SES API v2 will attempt delivery of email. If specified, the value must be greater than or equal to 300 seconds (5 minutes) and less than or equal to 50400 seconds (840 minutes).
  final pulumi.Input<int?>? maxDeliverySeconds;
  /// Name of the dedicated IP pool to associate with the configuration set.
  final pulumi.Input<String?>? sendingPoolName;
  /// Whether messages that use the configuration set are required to use TLS. Valid values: `REQUIRE`, `OPTIONAL`.
  final pulumi.Input<String?>? tlsPolicy;

  /// Creates a new [ConfigurationSetDeliveryOptions].
  /// [maxDeliverySeconds] Maximum amount of time, in seconds, that Amazon SES API v2 will attempt delivery of email. If specified, the value must be greater than or equal to 300 seconds (5 minutes) and less than or equal to 50400 seconds (840 minutes).
  /// [sendingPoolName] Name of the dedicated IP pool to associate with the configuration set.
  /// [tlsPolicy] Whether messages that use the configuration set are required to use TLS. Valid values: `REQUIRE`, `OPTIONAL`.
  const ConfigurationSetDeliveryOptions({
    this.maxDeliverySeconds,
    this.sendingPoolName,
    this.tlsPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxDeliverySeconds': ?maxDeliverySeconds,
      'sendingPoolName': ?sendingPoolName,
      'tlsPolicy': ?tlsPolicy,
    };
  }

  factory ConfigurationSetDeliveryOptions.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetDeliveryOptions(
      maxDeliverySeconds: (() { final guardedValue = map['maxDeliverySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      sendingPoolName: (() { final guardedValue = map['sendingPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsPolicy: (() { final guardedValue = map['tlsPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
