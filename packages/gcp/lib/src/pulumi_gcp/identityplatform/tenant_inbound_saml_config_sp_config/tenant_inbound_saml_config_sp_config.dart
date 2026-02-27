// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../tenant_inbound_saml_config_sp_config_sp_certificate/tenant_inbound_saml_config_sp_config_sp_certificate.dart';

class TenantInboundSamlConfigSpConfig {
  /// Callback URI where responses from IDP are handled. Must start with `https://`.
  final String callbackUri;

  /// (Output)
  /// The IDP's certificate data to verify the signature in the SAMLResponse issued by the IDP.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_sp_config_sp_certificates"></a>The `sp_certificates` block contains:
  final List<TenantInboundSamlConfigSpConfigSpCertificate>? spCertificates;

  /// Unique identifier for all SAML entities.
  final String spEntityId;

  TenantInboundSamlConfigSpConfig({
    required this.callbackUri,
    this.spCertificates,
    required this.spEntityId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['callbackUri'] = callbackUri;
    final spCertificatesValue = spCertificates;
    if (spCertificatesValue != null) {
      map['spCertificates'] = pulumi.Input.encodeList<
          TenantInboundSamlConfigSpConfigSpCertificate,
          Map<String, dynamic>>(spCertificatesValue, (value) => value.toMap());
    }
    map['spEntityId'] = spEntityId;
    return map;
  }

  factory TenantInboundSamlConfigSpConfig.fromMap(Map<String, dynamic> map) {
    return TenantInboundSamlConfigSpConfig(
      callbackUri: map['callbackUri'] as String,
      spCertificates: map['spCertificates'] == null
          ? null
          : pulumi.Input.decodeList<
                  TenantInboundSamlConfigSpConfigSpCertificate>(
              map['spCertificates'],
              (value) => TenantInboundSamlConfigSpConfigSpCertificate.fromMap(
                  (value as Map).cast<String, dynamic>())),
      spEntityId: map['spEntityId'] as String,
    );
  }
}
