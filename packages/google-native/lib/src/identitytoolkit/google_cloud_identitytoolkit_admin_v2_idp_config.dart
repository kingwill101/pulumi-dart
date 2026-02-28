// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_idp_certificate.dart';

/// The SAML IdP (Identity Provider) configuration when the project acts as the relying party.
class GoogleCloudIdentitytoolkitAdminV2IdpConfig {
  /// IDP's public keys for verifying signature in the assertions.
  final List<GoogleCloudIdentitytoolkitAdminV2IdpCertificate>? idpCertificates;

  /// Unique identifier for all SAML entities.
  final String? idpEntityId;

  /// Indicates if outbounding SAMLRequest should be signed.
  final bool? signRequest;

  /// URL to send Authentication request to.
  final String? ssoUrl;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2IdpConfig].
  /// [idpCertificates] IDP's public keys for verifying signature in the assertions.
  /// [idpEntityId] Unique identifier for all SAML entities.
  /// [signRequest] Indicates if outbounding SAMLRequest should be signed.
  /// [ssoUrl] URL to send Authentication request to.
  GoogleCloudIdentitytoolkitAdminV2IdpConfig({
    this.idpCertificates,
    this.idpEntityId,
    this.signRequest,
    this.ssoUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idpCertificatesValue = idpCertificates;
    if (idpCertificatesValue != null) {
      map['idpCertificates'] = pulumi.Input.encodeList<
          GoogleCloudIdentitytoolkitAdminV2IdpCertificate,
          Map<String, dynamic>>(idpCertificatesValue, (value) => value.toMap());
    }
    final idpEntityIdValue = idpEntityId;
    if (idpEntityIdValue != null) {
      map['idpEntityId'] = idpEntityIdValue;
    }
    final signRequestValue = signRequest;
    if (signRequestValue != null) {
      map['signRequest'] = signRequestValue;
    }
    final ssoUrlValue = ssoUrl;
    if (ssoUrlValue != null) {
      map['ssoUrl'] = ssoUrlValue;
    }
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2IdpConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2IdpConfig(
      idpCertificates: map['idpCertificates'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudIdentitytoolkitAdminV2IdpCertificate>(
              map['idpCertificates'],
              (value) =>
                  GoogleCloudIdentitytoolkitAdminV2IdpCertificate.fromMap(
                      (value as Map).cast<String, dynamic>())),
      idpEntityId:
          map['idpEntityId'] == null ? null : map['idpEntityId'] as String,
      signRequest:
          map['signRequest'] == null ? null : map['signRequest'] as bool,
      ssoUrl: map['ssoUrl'] == null ? null : map['ssoUrl'] as String,
    );
  }
}
