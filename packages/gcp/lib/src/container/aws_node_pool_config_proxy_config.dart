// ignore_for_file: unused_element, unnecessary_cast


class AwsNodePoolConfigProxyConfig {
  /// The ARN of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
  final String secretArn;
  /// The version string of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
  final String secretVersion;

  /// Creates a new [AwsNodePoolConfigProxyConfig].
  /// [secretArn] The ARN of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
  /// [secretVersion] The version string of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
  AwsNodePoolConfigProxyConfig({
    required this.secretArn,
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretArn': secretArn,
      'secretVersion': secretVersion,
    };
  }

  factory AwsNodePoolConfigProxyConfig.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolConfigProxyConfig(
      secretArn: map['secretArn'] as String,
      secretVersion: map['secretVersion'] as String,
    );
  }
}

