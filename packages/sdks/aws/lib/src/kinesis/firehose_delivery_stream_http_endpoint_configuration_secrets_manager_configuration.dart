// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirehoseDeliveryStreamHttpEndpointConfigurationSecretsManagerConfiguration {
  /// Enables or disables the Secrets Manager configuration.
  final pulumi.Input<bool>? enabled;
  /// The ARN of the role the stream assumes.
  final pulumi.Input<String>? roleArn;
  /// The ARN of the Secrets Manager secret. This value is required if `enabled` is true.
  final pulumi.Input<String>? secretArn;

  /// Creates a new [FirehoseDeliveryStreamHttpEndpointConfigurationSecretsManagerConfiguration].
  /// [enabled] Enables or disables the Secrets Manager configuration.
  /// [roleArn] The ARN of the role the stream assumes.
  /// [secretArn] The ARN of the Secrets Manager secret. This value is required if `enabled` is true.
  const FirehoseDeliveryStreamHttpEndpointConfigurationSecretsManagerConfiguration({
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

  factory FirehoseDeliveryStreamHttpEndpointConfigurationSecretsManagerConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamHttpEndpointConfigurationSecretsManagerConfiguration(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretArn: (() { final guardedValue = map['secretArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

