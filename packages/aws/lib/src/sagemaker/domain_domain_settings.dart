// ignore_for_file: unused_element, unnecessary_cast

import 'domain_domain_settings_docker_settings.dart';
import 'domain_domain_settings_rstudio_server_pro_domain_settings.dart';
import 'domain_domain_settings_trusted_identity_propagation_settings.dart';

class DomainDomainSettings {
  /// A collection of settings that configure the domain’s Docker interaction. see `docker_settings` Block below.
  final DomainDomainSettingsDockerSettings? dockerSettings;

  /// The configuration for attaching a SageMaker AI user profile name to the execution role as a sts:SourceIdentity key [AWS Docs](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html). Valid values are `USER_PROFILE_NAME` and `DISABLED`.
  final String? executionRoleIdentityConfig;

  /// A collection of settings that configure the RStudioServerPro Domain-level app. see `r_studio_server_pro_domain_settings` Block below.
  final DomainDomainSettingsRStudioServerProDomainSettings?
  rStudioServerProDomainSettings;

  /// The security groups for the Amazon Virtual Private Cloud that the Domain uses for communication between Domain-level apps and user apps.
  final List<String>? securityGroupIds;

  /// Configuration for trusted identity propagation. See the `trusted_identity_propagation_settings` Block below.
  final DomainDomainSettingsTrustedIdentityPropagationSettings?
  trustedIdentityPropagationSettings;

  /// Creates a new [DomainDomainSettings].
  /// [dockerSettings] A collection of settings that configure the domain’s Docker interaction. see `docker_settings` Block below.
  /// [executionRoleIdentityConfig] The configuration for attaching a SageMaker AI user profile name to the execution role as a sts:SourceIdentity key [AWS Docs](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html). Valid values are `USER_PROFILE_NAME` and `DISABLED`.
  /// [rStudioServerProDomainSettings] A collection of settings that configure the RStudioServerPro Domain-level app. see `r_studio_server_pro_domain_settings` Block below.
  /// [securityGroupIds] The security groups for the Amazon Virtual Private Cloud that the Domain uses for communication between Domain-level apps and user apps.
  /// [trustedIdentityPropagationSettings] Configuration for trusted identity propagation. See the `trusted_identity_propagation_settings` Block below.
  DomainDomainSettings({
    this.dockerSettings,
    this.executionRoleIdentityConfig,
    this.rStudioServerProDomainSettings,
    this.securityGroupIds,
    this.trustedIdentityPropagationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dockerSettings': ?dockerSettings == null
          ? null
          : dockerSettings!.toMap(),
      'executionRoleIdentityConfig': ?executionRoleIdentityConfig,
      'rStudioServerProDomainSettings': ?rStudioServerProDomainSettings == null
          ? null
          : rStudioServerProDomainSettings!.toMap(),
      'securityGroupIds': ?securityGroupIds,
      'trustedIdentityPropagationSettings':
          ?trustedIdentityPropagationSettings == null
          ? null
          : trustedIdentityPropagationSettings!.toMap(),
    };
  }

  factory DomainDomainSettings.fromMap(Map<String, dynamic> map) {
    return DomainDomainSettings(
      dockerSettings: map['dockerSettings'] == null
          ? null
          : DomainDomainSettingsDockerSettings.fromMap(
              (map['dockerSettings'] as Map).cast<String, dynamic>(),
            ),
      executionRoleIdentityConfig: map['executionRoleIdentityConfig'] == null
          ? null
          : map['executionRoleIdentityConfig'] as String,
      rStudioServerProDomainSettings:
          map['rStudioServerProDomainSettings'] == null
          ? null
          : DomainDomainSettingsRStudioServerProDomainSettings.fromMap(
              (map['rStudioServerProDomainSettings'] as Map)
                  .cast<String, dynamic>(),
            ),
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      trustedIdentityPropagationSettings:
          map['trustedIdentityPropagationSettings'] == null
          ? null
          : DomainDomainSettingsTrustedIdentityPropagationSettings.fromMap(
              (map['trustedIdentityPropagationSettings'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
