// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_inbound_saml_config_idp_config.dart';
import 'tenant_inbound_saml_config_sp_config.dart';

/// {@template pulumi_identityplatform_tenant_inbound_saml_config_tenant_inbound_saml_config_args_doc}
/// The set of arguments for TenantInboundSamlConfig.
/// {@endtemplate}
/// {@macro pulumi_identityplatform_tenant_inbound_saml_config_tenant_inbound_saml_config_args_doc}
class TenantInboundSamlConfigArgs {
  /// Human friendly display name.
  final pulumi.Input<String> displayName;

  /// If this config allows users to sign in with the provider.
  final pulumi.Input<bool>? enabled;

  /// SAML IdP configuration when the project acts as the relying party
  /// Structure is documented below.
  final pulumi.Input<TenantInboundSamlConfigIdpConfig> idpConfig;

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
  final pulumi.Input<TenantInboundSamlConfigSpConfig> spConfig;

  /// The name of the tenant where this inbound SAML config resource exists
  final pulumi.Input<String> tenant;

  /// Creates a new [TenantInboundSamlConfigArgs].
  /// [displayName] Human friendly display name.
  /// [enabled] If this config allows users to sign in with the provider.
  /// [idpConfig] SAML IdP configuration when the project acts as the relying party
  /// [name] The name of the InboundSamlConfig resource. Must start with 'saml.' and can only have alphanumeric characters,
  /// [project] The ID of the project in which the resource belongs.
  /// [spConfig] SAML SP (Service Provider) configuration when the project acts as the relying party to receive
  /// [tenant] The name of the tenant where this inbound SAML config resource exists
  TenantInboundSamlConfigArgs({
    required String displayName,
    bool? enabled,
    required TenantInboundSamlConfigIdpConfig idpConfig,
    String? name,
    String? project,
    required TenantInboundSamlConfigSpConfig spConfig,
    required String tenant,
  })  : displayName = pulumi.Input.asInput<String>(displayName),
        enabled = pulumi.Input.asOptionalInput<bool>(enabled),
        idpConfig =
            pulumi.Input.asInput<TenantInboundSamlConfigIdpConfig>(idpConfig),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        spConfig =
            pulumi.Input.asInput<TenantInboundSamlConfigSpConfig>(spConfig),
        tenant = pulumi.Input.asInput<String>(tenant);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    map['idpConfig'] = pulumi.Input.mapInputValue<
        TenantInboundSamlConfigIdpConfig,
        Map<String, dynamic>>(idpConfig, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['spConfig'] = pulumi.Input.mapInputValue<
        TenantInboundSamlConfigSpConfig,
        Map<String, dynamic>>(spConfig, (value) => value.toMap());
    map['tenant'] = tenant;
    return map;
  }

  factory TenantInboundSamlConfigArgs.fromMap(Map<String, dynamic> map) {
    return TenantInboundSamlConfigArgs(
      displayName: map['displayName'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      idpConfig: TenantInboundSamlConfigIdpConfig.fromMap(
          (map['idpConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      spConfig: TenantInboundSamlConfigSpConfig.fromMap(
          (map['spConfig'] as Map).cast<String, dynamic>()),
      tenant: map['tenant'] as String,
    );
  }
}
