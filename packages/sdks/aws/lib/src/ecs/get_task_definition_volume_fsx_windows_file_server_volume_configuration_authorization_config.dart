// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig {
  /// Authorization credential option used.
  final pulumi.Input<String> credentialsParameter;
  /// Fully qualified domain name hosted by an AWS Directory Service Managed Microsoft AD (Active Directory) or self-hosted AD on Amazon EC2.
  final pulumi.Input<String> domain;

  /// Creates a new [GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig].
  /// [credentialsParameter] Authorization credential option used.
  /// [domain] Fully qualified domain name hosted by an AWS Directory Service Managed Microsoft AD (Active Directory) or self-hosted AD on Amazon EC2.
  const GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig({
    required this.credentialsParameter,
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsParameter': credentialsParameter,
      'domain': domain,
    };
  }

  factory GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig.fromMap(Map<String, dynamic> map) {
    return GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig(
      credentialsParameter: pulumi.Input.fromValue(map['credentialsParameter'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
