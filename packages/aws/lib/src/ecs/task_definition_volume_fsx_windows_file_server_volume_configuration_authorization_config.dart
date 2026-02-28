// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig {
  /// The authorization credential option to use. The authorization credential options can be provided using either the Amazon Resource Name (ARN) of an AWS Secrets Manager secret or AWS Systems Manager Parameter Store parameter. The ARNs refer to the stored credentials.
  final String credentialsParameter;

  /// A fully qualified domain name hosted by an AWS Directory Service Managed Microsoft AD (Active Directory) or self-hosted AD on Amazon EC2.
  final String domain;

  /// Creates a new [TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig].
  /// [credentialsParameter] The authorization credential option to use. The authorization credential options can be provided using either the Amazon Resource Name (ARN) of an AWS Secrets Manager secret or AWS Systems Manager Parameter Store parameter. The ARNs refer to the stored credentials.
  /// [domain] A fully qualified domain name hosted by an AWS Directory Service Managed Microsoft AD (Active Directory) or self-hosted AD on Amazon EC2.
  TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig({
    required this.credentialsParameter,
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['credentialsParameter'] = credentialsParameter;
    map['domain'] = domain;
    return map;
  }

  factory TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig.fromMap(
      Map<String, dynamic> map) {
    return TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig(
      credentialsParameter: map['credentialsParameter'] as String,
      domain: map['domain'] as String,
    );
  }
}
