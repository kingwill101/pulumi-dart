// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirehoseDeliveryStreamSnowflakeConfigurationSecretsManagerConfiguration {
  /// Enables or disables the Secrets Manager configuration.
  final pulumi.Input<bool>? enabled;
  /// The ARN of the role the stream assumes.
  final pulumi.Input<String>? roleArn;
  /// The ARN of the Secrets Manager secret. This value is required if `enabled` is true.
  final pulumi.Input<String>? secretArn;

  /// Creates a new [FirehoseDeliveryStreamSnowflakeConfigurationSecretsManagerConfiguration].
  /// [enabled] Enables or disables the Secrets Manager configuration.
  /// [roleArn] The ARN of the role the stream assumes.
  /// [secretArn] The ARN of the Secrets Manager secret. This value is required if `enabled` is true.
  FirehoseDeliveryStreamSnowflakeConfigurationSecretsManagerConfiguration({
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

  factory FirehoseDeliveryStreamSnowflakeConfigurationSecretsManagerConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamSnowflakeConfigurationSecretsManagerConfiguration(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
      secretArn: map['secretArn'] == null ? null : (map['secretArn'] as String).input(),
    );
  }
}

