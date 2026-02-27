// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'saml_idp_config.dart';

/// The set of arguments for InboundSamlSsoProfile.
class InboundSamlSsoProfileArgs {
  /// Immutable. The customer. For example: `customers/C0123abc`.
  final Input<String>? customer;

  /// Human-readable name of the SAML SSO profile.
  final Input<String>? displayName;

  /// SAML identity provider configuration.
  final Input<SamlIdpConfig>? idpConfig;

  /// SAML service provider configuration for this SAML SSO profile. These are the service provider details provided by Google that should be configured on the corresponding identity provider.
  final Input<Map<String, dynamic>>? spConfig;

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
      map['idpConfig'] =
          Input.mapOptionalInputValue<SamlIdpConfig, Map<String, dynamic>>(
              idpConfigValue, (value) => value.toMap());
    }
    final spConfigValue = spConfig;
    if (spConfigValue != null) {
      map['spConfig'] = spConfigValue;
    }
    return map;
  }

  factory InboundSamlSsoProfileArgs.fromMap(Map<String, dynamic> map) {
    return InboundSamlSsoProfileArgs(
      customer: Input.asOptionalInput<String>(map['customer']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      idpConfig: Input.asOptionalInput<SamlIdpConfig>(map['idpConfig']),
      spConfig: Input.asOptionalInput<Map<String, dynamic>>(map['spConfig']),
    );
  }
}
