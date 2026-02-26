// ignore_for_file: unused_element, unnecessary_cast

class AwsClusterControlPlaneProxyConfig {
  /// The ARN of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
  final String secretArn;

  /// The version string of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
  final String secretVersion;

  AwsClusterControlPlaneProxyConfig({
    required this.secretArn,
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretArn'] = secretArn;
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory AwsClusterControlPlaneProxyConfig.fromMap(Map<String, dynamic> map) {
    return AwsClusterControlPlaneProxyConfig(
      secretArn: map['secretArn'] as String,
      secretVersion: map['secretVersion'] as String,
    );
  }
}
