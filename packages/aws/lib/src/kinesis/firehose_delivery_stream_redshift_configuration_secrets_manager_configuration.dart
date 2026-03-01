// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamRedshiftConfigurationSecretsManagerConfiguration {
  /// Enables or disables the Secrets Manager configuration.
  final bool? enabled;

  /// The ARN of the role the stream assumes.
  final String? roleArn;

  /// The ARN of the Secrets Manager secret. This value is required if `enabled` is true.
  final String? secretArn;

  /// Creates a new [FirehoseDeliveryStreamRedshiftConfigurationSecretsManagerConfiguration].
  /// [enabled] Enables or disables the Secrets Manager configuration.
  /// [roleArn] The ARN of the role the stream assumes.
  /// [secretArn] The ARN of the Secrets Manager secret. This value is required if `enabled` is true.
  FirehoseDeliveryStreamRedshiftConfigurationSecretsManagerConfiguration({
    this.enabled,
    this.roleArn,
    this.secretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'roleArn': ?roleArn,
      'secretArn': ?secretArn,
    };
  }

  factory FirehoseDeliveryStreamRedshiftConfigurationSecretsManagerConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirehoseDeliveryStreamRedshiftConfigurationSecretsManagerConfiguration(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      secretArn: map['secretArn'] == null ? null : map['secretArn'] as String,
    );
  }
}
