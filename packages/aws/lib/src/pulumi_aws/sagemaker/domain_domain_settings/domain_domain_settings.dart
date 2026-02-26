// ignore_for_file: unused_element, unnecessary_cast

import '../domain_domain_settings_docker_settings/domain_domain_settings_docker_settings.dart';
import '../domain_domain_settings_rstudio_server_pro_domain_settings/domain_domain_settings_rstudio_server_pro_domain_settings.dart';
import '../domain_domain_settings_trusted_identity_propagation_settings/domain_domain_settings_trusted_identity_propagation_settings.dart';

class DomainDomainSettings {
  /// A collection of settings that configure the domain’s Docker interaction. see <span pulumi-lang-nodejs="`dockerSettings`" pulumi-lang-dotnet="`DockerSettings`" pulumi-lang-go="`dockerSettings`" pulumi-lang-python="`docker_settings`" pulumi-lang-yaml="`dockerSettings`" pulumi-lang-java="`dockerSettings`">`docker_settings`</span> Block below.
  final DomainDomainSettingsDockerSettings? dockerSettings;

  /// The configuration for attaching a SageMaker AI user profile name to the execution role as a sts:SourceIdentity key [AWS Docs](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html). Valid values are `USER_PROFILE_NAME` and `DISABLED`.
  final String? executionRoleIdentityConfig;

  /// A collection of settings that configure the RStudioServerPro Domain-level app. see <span pulumi-lang-nodejs="`rStudioServerProDomainSettings`" pulumi-lang-dotnet="`RStudioServerProDomainSettings`" pulumi-lang-go="`rStudioServerProDomainSettings`" pulumi-lang-python="`r_studio_server_pro_domain_settings`" pulumi-lang-yaml="`rStudioServerProDomainSettings`" pulumi-lang-java="`rStudioServerProDomainSettings`">`r_studio_server_pro_domain_settings`</span> Block below.
  final DomainDomainSettingsRStudioServerProDomainSettings?
      rStudioServerProDomainSettings;

  /// The security groups for the Amazon Virtual Private Cloud that the Domain uses for communication between Domain-level apps and user apps.
  final List<String>? securityGroupIds;

  /// Configuration for trusted identity propagation. See the <span pulumi-lang-nodejs="`trustedIdentityPropagationSettings`" pulumi-lang-dotnet="`TrustedIdentityPropagationSettings`" pulumi-lang-go="`trustedIdentityPropagationSettings`" pulumi-lang-python="`trusted_identity_propagation_settings`" pulumi-lang-yaml="`trustedIdentityPropagationSettings`" pulumi-lang-java="`trustedIdentityPropagationSettings`">`trusted_identity_propagation_settings`</span> Block below.
  final DomainDomainSettingsTrustedIdentityPropagationSettings?
      trustedIdentityPropagationSettings;

  DomainDomainSettings({
    this.dockerSettings,
    this.executionRoleIdentityConfig,
    this.rStudioServerProDomainSettings,
    this.securityGroupIds,
    this.trustedIdentityPropagationSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dockerSettingsValue = dockerSettings;
    if (dockerSettingsValue != null) {
      map['dockerSettings'] = dockerSettingsValue.toMap();
    }
    final executionRoleIdentityConfigValue = executionRoleIdentityConfig;
    if (executionRoleIdentityConfigValue != null) {
      map['executionRoleIdentityConfig'] = executionRoleIdentityConfigValue;
    }
    final rStudioServerProDomainSettingsValue = rStudioServerProDomainSettings;
    if (rStudioServerProDomainSettingsValue != null) {
      map['rStudioServerProDomainSettings'] =
          rStudioServerProDomainSettingsValue.toMap();
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    final trustedIdentityPropagationSettingsValue =
        trustedIdentityPropagationSettings;
    if (trustedIdentityPropagationSettingsValue != null) {
      map['trustedIdentityPropagationSettings'] =
          trustedIdentityPropagationSettingsValue.toMap();
    }
    return map;
  }

  factory DomainDomainSettings.fromMap(Map<String, dynamic> map) {
    return DomainDomainSettings(
      dockerSettings: map['dockerSettings'] == null
          ? null
          : DomainDomainSettingsDockerSettings.fromMap(
              (map['dockerSettings'] as Map).cast<String, dynamic>()),
      executionRoleIdentityConfig: map['executionRoleIdentityConfig'] == null
          ? null
          : map['executionRoleIdentityConfig'] as String,
      rStudioServerProDomainSettings:
          map['rStudioServerProDomainSettings'] == null
              ? null
              : DomainDomainSettingsRStudioServerProDomainSettings.fromMap(
                  (map['rStudioServerProDomainSettings'] as Map)
                      .cast<String, dynamic>()),
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      trustedIdentityPropagationSettings:
          map['trustedIdentityPropagationSettings'] == null
              ? null
              : DomainDomainSettingsTrustedIdentityPropagationSettings.fromMap(
                  (map['trustedIdentityPropagationSettings'] as Map)
                      .cast<String, dynamic>()),
    );
  }
}
