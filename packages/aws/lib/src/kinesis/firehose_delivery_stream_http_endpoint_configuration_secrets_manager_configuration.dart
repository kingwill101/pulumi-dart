// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamHttpEndpointConfigurationSecretsManagerConfiguration {
  /// Enables or disables the Secrets Manager configuration.
  final bool? enabled;

  /// The ARN of the role the stream assumes.
  final String? roleArn;

  /// The ARN of the Secrets Manager secret. This value is required if `enabled` is true.
  final String? secretArn;

  /// Creates a new [FirehoseDeliveryStreamHttpEndpointConfigurationSecretsManagerConfiguration].
  /// [enabled] Enables or disables the Secrets Manager configuration.
  /// [roleArn] The ARN of the role the stream assumes.
  /// [secretArn] The ARN of the Secrets Manager secret. This value is required if `enabled` is true.
  FirehoseDeliveryStreamHttpEndpointConfigurationSecretsManagerConfiguration({
    this.enabled,
    this.roleArn,
    this.secretArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    final secretArnValue = secretArn;
    if (secretArnValue != null) {
      map['secretArn'] = secretArnValue;
    }
    return map;
  }

  factory FirehoseDeliveryStreamHttpEndpointConfigurationSecretsManagerConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamHttpEndpointConfigurationSecretsManagerConfiguration(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      secretArn: map['secretArn'] == null ? null : map['secretArn'] as String,
    );
  }
}
