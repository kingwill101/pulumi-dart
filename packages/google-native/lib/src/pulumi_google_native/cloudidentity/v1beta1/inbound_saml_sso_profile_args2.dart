// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'saml_idp_config2.dart';

/// The set of arguments for InboundSamlSsoProfile.
class InboundSamlSsoProfileArgs2 {
  /// Immutable. The customer. For example: `customers/C0123abc`.
  final Input<String>? customer;

  /// Human-readable name of the SAML SSO profile.
  final Input<String>? displayName;

  /// SAML identity provider configuration.
  final Input<SamlIdpConfig2>? idpConfig;

  /// SAML service provider configuration for this SAML SSO profile. These are the service provider details provided by Google that should be configured on the corresponding identity provider.
  final Input<Map<String, dynamic>>? spConfig;

  InboundSamlSsoProfileArgs2({
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
          Input.mapOptionalInputValue<SamlIdpConfig2, Map<String, dynamic>>(
              idpConfigValue, (value) => value.toMap());
    }
    final spConfigValue = spConfig;
    if (spConfigValue != null) {
      map['spConfig'] = spConfigValue;
    }
    return map;
  }

  factory InboundSamlSsoProfileArgs2.fromMap(Map<String, dynamic> map) {
    return InboundSamlSsoProfileArgs2(
      customer: Input.asOptionalInput<String>(map['customer']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      idpConfig: Input.asOptionalInput<SamlIdpConfig2>(map['idpConfig']),
      spConfig: Input.asOptionalInput<Map<String, dynamic>>(map['spConfig']),
    );
  }
}
