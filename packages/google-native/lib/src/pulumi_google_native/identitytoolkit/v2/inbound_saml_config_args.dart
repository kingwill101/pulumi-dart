// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_identitytoolkit_admin_v2_idp_config.dart';
import 'google_cloud_identitytoolkit_admin_v2_sp_config.dart';

/// The set of arguments for InboundSamlConfig.
class InboundSamlConfigArgs {
  /// The config's display name set by developers.
  final Input<String>? displayName;

  /// True if allows the user to sign in with the provider.
  final Input<bool>? enabled;

  /// The SAML IdP (Identity Provider) configuration when the project acts as the relying party.
  final Input<GoogleCloudIdentitytoolkitAdminV2IdpConfig>? idpConfig;

  /// The id to use for this config.
  final Input<String>? inboundSamlConfigId;

  /// The name of the InboundSamlConfig resource, for example: 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'. Ignored during create requests.
  final Input<String>? name;
  final Input<String>? project;

  /// The SAML SP (Service Provider) configuration when the project acts as the relying party to receive and accept an authentication assertion issued by a SAML identity provider.
  final Input<GoogleCloudIdentitytoolkitAdminV2SpConfig>? spConfig;
  final Input<String> tenantId;

  InboundSamlConfigArgs({
    this.displayName,
    this.enabled,
    this.idpConfig,
    this.inboundSamlConfigId,
    this.name,
    this.project,
    this.spConfig,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final idpConfigValue = idpConfig;
    if (idpConfigValue != null) {
      map['idpConfig'] = Input.mapOptionalInputValue<
          GoogleCloudIdentitytoolkitAdminV2IdpConfig,
          Map<String, dynamic>>(idpConfigValue, (value) => value.toMap());
    }
    final inboundSamlConfigIdValue = inboundSamlConfigId;
    if (inboundSamlConfigIdValue != null) {
      map['inboundSamlConfigId'] = inboundSamlConfigIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final spConfigValue = spConfig;
    if (spConfigValue != null) {
      map['spConfig'] = Input.mapOptionalInputValue<
          GoogleCloudIdentitytoolkitAdminV2SpConfig,
          Map<String, dynamic>>(spConfigValue, (value) => value.toMap());
    }
    map['tenantId'] = tenantId;
    return map;
  }

  factory InboundSamlConfigArgs.fromMap(Map<String, dynamic> map) {
    return InboundSamlConfigArgs(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      idpConfig:
          Input.asOptionalInput<GoogleCloudIdentitytoolkitAdminV2IdpConfig>(
              map['idpConfig']),
      inboundSamlConfigId:
          Input.asOptionalInput<String>(map['inboundSamlConfigId']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      spConfig:
          Input.asOptionalInput<GoogleCloudIdentitytoolkitAdminV2SpConfig>(
              map['spConfig']),
      tenantId: Input.asInput<String>(map['tenantId']),
    );
  }
}
