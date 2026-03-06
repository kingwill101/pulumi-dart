// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContinuousDeploymentPolicyTrafficConfigSingleHeaderConfig {
  /// Request header name to send to the staging distribution. The header must contain the prefix `aws-cf-cd-`.
  final pulumi.Input<String> header;
  /// Request header value.
  final pulumi.Input<String> value;

  /// Creates a new [ContinuousDeploymentPolicyTrafficConfigSingleHeaderConfig].
  /// [header] Request header name to send to the staging distribution. The header must contain the prefix `aws-cf-cd-`.
  /// [value] Request header value.
  const ContinuousDeploymentPolicyTrafficConfigSingleHeaderConfig({
    required this.header,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': header,
      'value': value,
    };
  }

  factory ContinuousDeploymentPolicyTrafficConfigSingleHeaderConfig.fromMap(Map<String, dynamic> map) {
    return ContinuousDeploymentPolicyTrafficConfigSingleHeaderConfig(
      header: pulumi.Input.fromValue(map['header'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

