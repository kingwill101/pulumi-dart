// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'saml_idp_config.dart';

/// The set of arguments for InboundSamlSsoProfile.
class InboundSamlSsoProfileArgs {
  /// Immutable. The customer. For example: `customers/C0123abc`.
  final pulumi.Input<String>? customer;

  /// Human-readable name of the SAML SSO profile.
  final pulumi.Input<String>? displayName;

  /// SAML identity provider configuration.
  final pulumi.Input<SamlIdpConfig>? idpConfig;

  /// SAML service provider configuration for this SAML SSO profile. These are the service provider details provided by Google that should be configured on the corresponding identity provider.
  final pulumi.Input<Map<String, dynamic>>? spConfig;

  InboundSamlSsoProfileArgs({
    this.customer,
    this.displayName,
    this.idpConfig,
    this.spConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customerValue = customer;
    if (customerValue != null) {
      map['customer'] = customerValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final idpConfigValue = idpConfig;
    if (idpConfigValue != null) {
      map['idpConfig'] = pulumi.Input.mapOptionalInputValue<SamlIdpConfig,
          Map<String, dynamic>>(idpConfigValue, (value) => value.toMap());
    }
    final spConfigValue = spConfig;
    if (spConfigValue != null) {
      map['spConfig'] = spConfigValue;
    }
    return map;
  }

  factory InboundSamlSsoProfileArgs.fromMap(Map<String, dynamic> map) {
    return InboundSamlSsoProfileArgs(
      customer: pulumi.Input.asOptionalInput<String>(map['customer']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      idpConfig: pulumi.Input.asOptionalInput<SamlIdpConfig>(map['idpConfig']),
      spConfig:
          pulumi.Input.asOptionalInput<Map<String, dynamic>>(map['spConfig']),
    );
  }
}
