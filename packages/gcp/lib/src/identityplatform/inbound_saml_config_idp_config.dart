// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_saml_config_idp_config_idp_certificate.dart';

class InboundSamlConfigIdpConfig {
  /// The IdP's certificate data to verify the signature in the SAMLResponse issued by the IDP.
  /// Structure is documented below.
  final List<InboundSamlConfigIdpConfigIdpCertificate> idpCertificates;
  /// Unique identifier for all SAML entities
  final String idpEntityId;
  /// Indicates if outbounding SAMLRequest should be signed.
  final bool? signRequest;
  /// URL to send Authentication request to.
  final String ssoUrl;

  /// Creates a new [InboundSamlConfigIdpConfig].
  /// [idpCertificates] The IdP's certificate data to verify the signature in the SAMLResponse issued by the IDP.
  /// [idpEntityId] Unique identifier for all SAML entities
  /// [signRequest] Indicates if outbounding SAMLRequest should be signed.
  /// [ssoUrl] URL to send Authentication request to.
  InboundSamlConfigIdpConfig({
    required this.idpCertificates,
    required this.idpEntityId,
    this.signRequest,
    required this.ssoUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idpCertificates': pulumi.Input.encodeList<InboundSamlConfigIdpConfigIdpCertificate, Map<String, dynamic>>(idpCertificates, (value) => value.toMap()),
      'idpEntityId': idpEntityId,
      'signRequest': ?signRequest,
      'ssoUrl': ssoUrl,
    };
  }

  factory InboundSamlConfigIdpConfig.fromMap(Map<String, dynamic> map) {
    return InboundSamlConfigIdpConfig(
      idpCertificates: pulumi.Input.decodeList<InboundSamlConfigIdpConfigIdpCertificate>(map['idpCertificates'], (value) => InboundSamlConfigIdpConfigIdpCertificate.fromMap((value as Map).cast<String, dynamic>())),
      idpEntityId: map['idpEntityId'] as String,
      signRequest: map['signRequest'] == null ? null : map['signRequest'] as bool,
      ssoUrl: map['ssoUrl'] as String,
    );
  }
}

