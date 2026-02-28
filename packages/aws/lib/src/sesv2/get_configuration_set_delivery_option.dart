// ignore_for_file: unused_element, unnecessary_cast

class GetConfigurationSetDeliveryOption {
  /// The maximum amount of time, in seconds, that Amazon SES API v2 will attempt delivery of email. If specified, the value must greater than or equal to 300 seconds (5 minutes) and less than or equal to 50400 seconds (840 minutes).
  final int maxDeliverySeconds;

  /// The name of the dedicated IP pool to associate with the configuration set.
  final String sendingPoolName;

  /// Specifies whether messages that use the configuration set are required to use Transport Layer Security (TLS).
  final String tlsPolicy;

  /// Creates a new [GetConfigurationSetDeliveryOption].
  /// [maxDeliverySeconds] The maximum amount of time, in seconds, that Amazon SES API v2 will attempt delivery of email. If specified, the value must greater than or equal to 300 seconds (5 minutes) and less than or equal to 50400 seconds (840 minutes).
  /// [sendingPoolName] The name of the dedicated IP pool to associate with the configuration set.
  /// [tlsPolicy] Specifies whether messages that use the configuration set are required to use Transport Layer Security (TLS).
  GetConfigurationSetDeliveryOption({
    required this.maxDeliverySeconds,
    required this.sendingPoolName,
    required this.tlsPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxDeliverySeconds'] = maxDeliverySeconds;
    map['sendingPoolName'] = sendingPoolName;
    map['tlsPolicy'] = tlsPolicy;
    return map;
  }

  factory GetConfigurationSetDeliveryOption.fromMap(Map<String, dynamic> map) {
    return GetConfigurationSetDeliveryOption(
      maxDeliverySeconds: map['maxDeliverySeconds'] as int,
      sendingPoolName: map['sendingPoolName'] as String,
      tlsPolicy: map['tlsPolicy'] as String,
    );
  }
}
