// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_domain_settings_docker_settings.dart';
import 'domain_domain_settings_rstudio_server_pro_domain_settings.dart';
import 'domain_domain_settings_trusted_identity_propagation_settings.dart';

class DomainDomainSettings {
  /// A collection of settings that configure the domain’s Docker interaction. see `dockerSettings` Block below.
  final pulumi.Input<DomainDomainSettingsDockerSettings>? dockerSettings;
  /// The configuration for attaching a SageMaker AI user profile name to the execution role as a sts:SourceIdentity key [AWS Docs](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html). Valid values are `USER_PROFILE_NAME` and `DISABLED`.
  final pulumi.Input<String>? executionRoleIdentityConfig;
  /// A collection of settings that configure the RStudioServerPro Domain-level app. see `rStudioServerProDomainSettings` Block below.
  final pulumi.Input<DomainDomainSettingsRStudioServerProDomainSettings>? rStudioServerProDomainSettings;
  /// The security groups for the Amazon Virtual Private Cloud that the Domain uses for communication between Domain-level apps and user apps.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// Configuration for trusted identity propagation. See the `trustedIdentityPropagationSettings` Block below.
  final pulumi.Input<DomainDomainSettingsTrustedIdentityPropagationSettings>? trustedIdentityPropagationSettings;

  /// Creates a new [DomainDomainSettings].
  /// [dockerSettings] A collection of settings that configure the domain’s Docker interaction. see `dockerSettings` Block below.
  /// [executionRoleIdentityConfig] The configuration for attaching a SageMaker AI user profile name to the execution role as a sts:SourceIdentity key [AWS Docs](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html). Valid values are `USER_PROFILE_NAME` and `DISABLED`.
  /// [rStudioServerProDomainSettings] A collection of settings that configure the RStudioServerPro Domain-level app. see `rStudioServerProDomainSettings` Block below.
  /// [securityGroupIds] The security groups for the Amazon Virtual Private Cloud that the Domain uses for communication between Domain-level apps and user apps.
  /// [trustedIdentityPropagationSettings] Configuration for trusted identity propagation. See the `trustedIdentityPropagationSettings` Block below.
  const DomainDomainSettings({
    this.dockerSettings,
    this.executionRoleIdentityConfig,
    this.rStudioServerProDomainSettings,
    this.securityGroupIds,
    this.trustedIdentityPropagationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dockerSettings': ?pulumi.Input.mapOptionalInputValue<DomainDomainSettingsDockerSettings, Map<String, dynamic>>(dockerSettings, (value) => value.toMap()),
      'executionRoleIdentityConfig': ?executionRoleIdentityConfig,
      'rStudioServerProDomainSettings': ?pulumi.Input.mapOptionalInputValue<DomainDomainSettingsRStudioServerProDomainSettings, Map<String, dynamic>>(rStudioServerProDomainSettings, (value) => value.toMap()),
      'securityGroupIds': ?securityGroupIds,
      'trustedIdentityPropagationSettings': ?pulumi.Input.mapOptionalInputValue<DomainDomainSettingsTrustedIdentityPropagationSettings, Map<String, dynamic>>(trustedIdentityPropagationSettings, (value) => value.toMap()),
    };
  }

  factory DomainDomainSettings.fromMap(Map<String, dynamic> map) {
    return DomainDomainSettings(
      dockerSettings: (() { final guardedValue = map['dockerSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDomainSettingsDockerSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      executionRoleIdentityConfig: (() { final guardedValue = map['executionRoleIdentityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rStudioServerProDomainSettings: (() { final guardedValue = map['rStudioServerProDomainSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDomainSettingsRStudioServerProDomainSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      trustedIdentityPropagationSettings: (() { final guardedValue = map['trustedIdentityPropagationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDomainSettingsTrustedIdentityPropagationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
