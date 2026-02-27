// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../inbound_saml_config_idp_config/inbound_saml_config_idp_config.dart';
import '../inbound_saml_config_sp_config/inbound_saml_config_sp_config.dart';

/// The set of arguments for InboundSamlConfig.
class InboundSamlConfigArgs {
  /// Human friendly display name.
  final pulumi.Input<String> displayName;

  /// If this config allows users to sign in with the provider.
  final pulumi.Input<bool>? enabled;

  /// SAML IdP configuration when the project acts as the relying party
  /// Structure is documented below.
  final pulumi.Input<InboundSamlConfigIdpConfig> idpConfig;

  /// The name of the InboundSamlConfig resource. Must start with 'saml.' and can only have alphanumeric characters,
  /// hyphens, underscores or periods. The part after 'saml.' must also start with a lowercase letter, end with an
  /// alphanumeric character, and have at least 2 characters.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// SAML SP (Service Provider) configuration when the project acts as the relying party to receive
  /// and accept an authentication assertion issued by a SAML identity provider.
  /// Structure is documented below.
  final pulumi.Input<InboundSamlConfigSpConfig> spConfig;

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
    map['idpConfig'] = pulumi.Input.mapInputValue<InboundSamlConfigIdpConfig,
        Map<String, dynamic>>(idpConfig, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['spConfig'] = pulumi.Input.mapInputValue<InboundSamlConfigSpConfig,
        Map<String, dynamic>>(spConfig, (value) => value.toMap());
    return map;
  }

  factory InboundSamlConfigArgs.fromMap(Map<String, dynamic> map) {
    return InboundSamlConfigArgs(
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      idpConfig:
          pulumi.Input.asInput<InboundSamlConfigIdpConfig>(map['idpConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      spConfig:
          pulumi.Input.asInput<InboundSamlConfigSpConfig>(map['spConfig']),
    );
  }
}
