// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../inbound_saml_config_idp_config/inbound_saml_config_idp_config.dart';
import '../inbound_saml_config_sp_config/inbound_saml_config_sp_config.dart';

/// The set of arguments for InboundSamlConfig.
class InboundSamlConfigArgs {
  /// Human friendly display name.
  final Input<String> displayName;

  /// If this config allows users to sign in with the provider.
  final Input<bool>? enabled;

  /// SAML IdP configuration when the project acts as the relying party
  /// Structure is documented below.
  final Input<InboundSamlConfigIdpConfig> idpConfig;

  /// The name of the InboundSamlConfig resource. Must start with 'saml.' and can only have alphanumeric characters,
  /// hyphens, underscores or periods. The part after 'saml.' must also start with a lowercase letter, end with an
  /// alphanumeric character, and have at least 2 characters.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// SAML SP (Service Provider) configuration when the project acts as the relying party to receive
  /// and accept an authentication assertion issued by a SAML identity provider.
  /// Structure is documented below.
  final Input<InboundSamlConfigSpConfig> spConfig;

  InboundSamlConfigArgs({
    required this.displayName,
    this.enabled,
    required this.idpConfig,
    this.name,
    this.project,
    required this.spConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    map['idpConfig'] =
        Input.mapInputValue<InboundSamlConfigIdpConfig, Map<String, dynamic>>(
            idpConfig, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['spConfig'] =
        Input.mapInputValue<InboundSamlConfigSpConfig, Map<String, dynamic>>(
            spConfig, (value) => value.toMap());
    return map;
  }

  factory InboundSamlConfigArgs.fromMap(Map<String, dynamic> map) {
    return InboundSamlConfigArgs(
      displayName: Input.asInput<String>(map['displayName']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      idpConfig: Input.asInput<InboundSamlConfigIdpConfig>(map['idpConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      spConfig: Input.asInput<InboundSamlConfigSpConfig>(map['spConfig']),
    );
  }
}
