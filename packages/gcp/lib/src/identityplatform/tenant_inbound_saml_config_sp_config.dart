// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_inbound_saml_config_sp_config_sp_certificate.dart';

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

  /// Creates a new [TenantInboundSamlConfigSpConfig].
  /// [callbackUri] Callback URI where responses from IDP are handled. Must start with `https://`.
  /// [spCertificates] (Output)
  /// [spEntityId] Unique identifier for all SAML entities.
  TenantInboundSamlConfigSpConfig({
    required this.callbackUri,
    this.spCertificates,
    required this.spEntityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callbackUri': callbackUri,
      'spCertificates': ?spCertificates == null ? null : pulumi.Input.encodeList<TenantInboundSamlConfigSpConfigSpCertificate, Map<String, dynamic>>(spCertificates!, (value) => value.toMap()),
      'spEntityId': spEntityId,
    };
  }

  factory TenantInboundSamlConfigSpConfig.fromMap(Map<String, dynamic> map) {
    return TenantInboundSamlConfigSpConfig(
      callbackUri: map['callbackUri'] as String,
      spCertificates: map['spCertificates'] == null ? null : pulumi.Input.decodeList<TenantInboundSamlConfigSpConfigSpCertificate>(map['spCertificates'], (value) => TenantInboundSamlConfigSpConfigSpCertificate.fromMap((value as Map).cast<String, dynamic>())),
      spEntityId: map['spEntityId'] as String,
    );
  }
}

