// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationSetDeliveryOptions {
  /// The maximum amount of time, in seconds, that Amazon SES API v2 will attempt delivery of email. If specified, the value must greater than or equal to 300 seconds (5 minutes) and less than or equal to 50400 seconds (840 minutes).
  final pulumi.Input<int>? maxDeliverySeconds;
  /// The name of the dedicated IP pool to associate with the configuration set.
  final pulumi.Input<String>? sendingPoolName;
  /// Specifies whether messages that use the configuration set are required to use Transport Layer Security (TLS). Valid values: `REQUIRE`, `OPTIONAL`.
  final pulumi.Input<String>? tlsPolicy;

  /// Creates a new [ConfigurationSetDeliveryOptions].
  /// [maxDeliverySeconds] The maximum amount of time, in seconds, that Amazon SES API v2 will attempt delivery of email. If specified, the value must greater than or equal to 300 seconds (5 minutes) and less than or equal to 50400 seconds (840 minutes).
  /// [sendingPoolName] The name of the dedicated IP pool to associate with the configuration set.
  /// [tlsPolicy] Specifies whether messages that use the configuration set are required to use Transport Layer Security (TLS). Valid values: `REQUIRE`, `OPTIONAL`.
  ConfigurationSetDeliveryOptions({
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
      maxDeliverySeconds: map['maxDeliverySeconds'] == null ? null : ((map['maxDeliverySeconds'] as int).input()).input(),
      sendingPoolName: map['sendingPoolName'] == null ? null : ((map['sendingPoolName'] as String).input()).input(),
      tlsPolicy: map['tlsPolicy'] == null ? null : ((map['tlsPolicy'] as String).input()).input(),
    );
  }
}

