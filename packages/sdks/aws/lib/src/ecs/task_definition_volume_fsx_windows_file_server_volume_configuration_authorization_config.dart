// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig {
  /// Authorization credential option to use. The authorization credential options can be provided using either the ARN of an AWS Secrets Manager secret or AWS Systems Manager Parameter Store parameter. The ARNs refer to the stored credentials.
  final pulumi.Input<String> credentialsParameter;
  /// Fully qualified domain name hosted by an AWS Directory Service Managed Microsoft AD (Active Directory) or self-hosted AD on Amazon EC2.
  final pulumi.Input<String> domain;

  /// Creates a new [TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig].
  /// [credentialsParameter] Authorization credential option to use. The authorization credential options can be provided using either the ARN of an AWS Secrets Manager secret or AWS Systems Manager Parameter Store parameter. The ARNs refer to the stored credentials.
  /// [domain] Fully qualified domain name hosted by an AWS Directory Service Managed Microsoft AD (Active Directory) or self-hosted AD on Amazon EC2.
  const TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig({
    required this.credentialsParameter,
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsParameter': credentialsParameter,
      'domain': domain,
    };
  }

  factory TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig(
      credentialsParameter: pulumi.Input.fromValue(map['credentialsParameter'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
