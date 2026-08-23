// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfigurationSetDeliveryOption {
  /// The maximum amount of time, in seconds, that Amazon SES API v2 will attempt delivery of email. If specified, the value must greater than or equal to 300 seconds (5 minutes) and less than or equal to 50400 seconds (840 minutes).
  final pulumi.Input<int> maxDeliverySeconds;
  /// The name of the dedicated IP pool to associate with the configuration set.
  final pulumi.Input<String> sendingPoolName;
  /// Specifies whether messages that use the configuration set are required to use Transport Layer Security (TLS).
  final pulumi.Input<String> tlsPolicy;

  /// Creates a new [GetConfigurationSetDeliveryOption].
  /// [maxDeliverySeconds] The maximum amount of time, in seconds, that Amazon SES API v2 will attempt delivery of email. If specified, the value must greater than or equal to 300 seconds (5 minutes) and less than or equal to 50400 seconds (840 minutes).
  /// [sendingPoolName] The name of the dedicated IP pool to associate with the configuration set.
  /// [tlsPolicy] Specifies whether messages that use the configuration set are required to use Transport Layer Security (TLS).
  const GetConfigurationSetDeliveryOption({
    required this.maxDeliverySeconds,
    required this.sendingPoolName,
    required this.tlsPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxDeliverySeconds': maxDeliverySeconds,
      'sendingPoolName': sendingPoolName,
      'tlsPolicy': tlsPolicy,
    };
  }

  factory GetConfigurationSetDeliveryOption.fromMap(Map<String, dynamic> map) {
    return GetConfigurationSetDeliveryOption(
      maxDeliverySeconds: pulumi.Input.fromValue(map['maxDeliverySeconds'] as int),
      sendingPoolName: pulumi.Input.fromValue(map['sendingPoolName'] as String),
      tlsPolicy: pulumi.Input.fromValue(map['tlsPolicy'] as String),
    );
  }
}
