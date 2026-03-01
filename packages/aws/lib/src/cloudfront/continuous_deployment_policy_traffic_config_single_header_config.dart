// ignore_for_file: unused_element, unnecessary_cast

class ContinuousDeploymentPolicyTrafficConfigSingleHeaderConfig {
  /// Request header name to send to the staging distribution. The header must contain the prefix `aws-cf-cd-`.
  final String header;

  /// Request header value.
  final String value;

  /// Creates a new [ContinuousDeploymentPolicyTrafficConfigSingleHeaderConfig].
  /// [header] Request header name to send to the staging distribution. The header must contain the prefix `aws-cf-cd-`.
  /// [value] Request header value.
  ContinuousDeploymentPolicyTrafficConfigSingleHeaderConfig({
    required this.header,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'header': header, 'value': value};
  }

  factory ContinuousDeploymentPolicyTrafficConfigSingleHeaderConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ContinuousDeploymentPolicyTrafficConfigSingleHeaderConfig(
      header: map['header'] as String,
      value: map['value'] as String,
    );
  }
}
