// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamSnowflakeConfigurationSecretsManagerConfiguration {
  /// Enables or disables the Secrets Manager configuration.
  final bool? enabled;

  /// The ARN of the role the stream assumes.
  final String? roleArn;

  /// The ARN of the Secrets Manager secret. This value is required if <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span> is true.
  final String? secretArn;

  FirehoseDeliveryStreamSnowflakeConfigurationSecretsManagerConfiguration({
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

  factory FirehoseDeliveryStreamSnowflakeConfigurationSecretsManagerConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamSnowflakeConfigurationSecretsManagerConfiguration(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      secretArn: map['secretArn'] == null ? null : map['secretArn'] as String,
    );
  }
}
