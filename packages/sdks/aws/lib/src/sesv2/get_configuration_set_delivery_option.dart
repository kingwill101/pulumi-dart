// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfigurationSetDeliveryOption {
  /// Maximum amount of time, in seconds, that Amazon SES API v2 attempts delivery of email. If specified, the value must be greater than or equal to 300 seconds (5 minutes) and less than or equal to 50400 seconds (840 minutes).
  final pulumi.Input<int> maxDeliverySeconds;
  /// Name of the dedicated IP pool to associate with the configuration set.
  final pulumi.Input<String> sendingPoolName;
  /// Whether messages that use the configuration set are required to use TLS.
  final pulumi.Input<String> tlsPolicy;

  /// Creates a new [GetConfigurationSetDeliveryOption].
  /// [maxDeliverySeconds] Maximum amount of time, in seconds, that Amazon SES API v2 attempts delivery of email. If specified, the value must be greater than or equal to 300 seconds (5 minutes) and less than or equal to 50400 seconds (840 minutes).
  /// [sendingPoolName] Name of the dedicated IP pool to associate with the configuration set.
  /// [tlsPolicy] Whether messages that use the configuration set are required to use TLS.
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
      maxDeliverySeconds: pulumi.Input.fromValue((map['maxDeliverySeconds'] as num).toInt()),
      sendingPoolName: pulumi.Input.fromValue(map['sendingPoolName'] as String),
      tlsPolicy: pulumi.Input.fromValue(map['tlsPolicy'] as String),
    );
  }
}
