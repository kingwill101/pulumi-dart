// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_saml_config_idp_config.dart';
import 'inbound_saml_config_sp_config.dart';

/// {@template pulumi_identityplatform_inbound_saml_config_inbound_saml_config_args_doc}
/// The set of arguments for InboundSamlConfig.
/// {@endtemplate}
/// {@macro pulumi_identityplatform_inbound_saml_config_inbound_saml_config_args_doc}
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

  /// Creates a new [InboundSamlConfigArgs].
  /// [displayName] Human friendly display name.
  /// [enabled] If this config allows users to sign in with the provider.
  /// [idpConfig] SAML IdP configuration when the project acts as the relying party
  /// [name] The name of the InboundSamlConfig resource. Must start with 'saml.' and can only have alphanumeric characters,
  /// [project] The ID of the project in which the resource belongs.
  /// [spConfig] SAML SP (Service Provider) configuration when the project acts as the relying party to receive
  InboundSamlConfigArgs({
    required String displayName,
    bool? enabled,
    required InboundSamlConfigIdpConfig idpConfig,
    String? name,
    String? project,
    required InboundSamlConfigSpConfig spConfig,
  })  : displayName = pulumi.Input.asInput<String>(displayName),
        enabled = pulumi.Input.asOptionalInput<bool>(enabled),
        idpConfig = pulumi.Input.asInput<InboundSamlConfigIdpConfig>(idpConfig),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        spConfig = pulumi.Input.asInput<InboundSamlConfigSpConfig>(spConfig);

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
      displayName: map['displayName'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      idpConfig: InboundSamlConfigIdpConfig.fromMap(
          (map['idpConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      spConfig: InboundSamlConfigSpConfig.fromMap(
          (map['spConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
