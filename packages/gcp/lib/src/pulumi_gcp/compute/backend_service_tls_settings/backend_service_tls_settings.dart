// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../backend_service_tls_settings_subject_alt_name/backend_service_tls_settings_subject_alt_name.dart';

class BackendServiceTlsSettings {
  /// Reference to the BackendAuthenticationConfig resource from the networksecurity.googleapis.com namespace.
  /// Can be used in authenticating TLS connections to the backend, as specified by the authenticationMode field.
  /// Can only be specified if authenticationMode is not NONE.
  final String? authenticationConfig;

  /// Server Name Indication - see RFC3546 section 3.1. If set, the load balancer sends this string as the SNI hostname in the
  /// TLS connection to the backend, and requires that this string match a Subject Alternative Name (SAN) in the backend's
  /// server certificate. With a Regional Internet NEG backend, if the SNI is specified here, the load balancer uses it
  /// regardless of whether the Regional Internet NEG is specified with FQDN or IP address and port.
  final String? sni;

  /// A list of Subject Alternative Names (SANs) that the Load Balancer verifies during a TLS handshake with the backend.
  /// When the server presents its X.509 certificate to the Load Balancer, the Load Balancer inspects the certificate's SAN field,
  /// and requires that at least one SAN match one of the subjectAltNames in the list. This field is limited to 5 entries.
  /// When both sni and subjectAltNames are specified, the load balancer matches the backend certificate's SAN only to
  /// subjectAltNames.
  /// Structure is documented below.
  final List<BackendServiceTlsSettingsSubjectAltName>? subjectAltNames;

  BackendServiceTlsSettings({
    this.authenticationConfig,
    this.sni,
    this.subjectAltNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authenticationConfigValue = authenticationConfig;
    if (authenticationConfigValue != null) {
      map['authenticationConfig'] = authenticationConfigValue;
    }
    final sniValue = sni;
    if (sniValue != null) {
      map['sni'] = sniValue;
    }
    final subjectAltNamesValue = subjectAltNames;
    if (subjectAltNamesValue != null) {
      map['subjectAltNames'] = Input.encodeList<
          BackendServiceTlsSettingsSubjectAltName,
          Map<String, dynamic>>(subjectAltNamesValue, (value) => value.toMap());
    }
    return map;
  }

  factory BackendServiceTlsSettings.fromMap(Map<String, dynamic> map) {
    return BackendServiceTlsSettings(
      authenticationConfig: map['authenticationConfig'] == null
          ? null
          : map['authenticationConfig'] as String,
      sni: map['sni'] == null ? null : map['sni'] as String,
      subjectAltNames: map['subjectAltNames'] == null
          ? null
          : Input.decodeList<BackendServiceTlsSettingsSubjectAltName>(
              map['subjectAltNames'],
              (value) => BackendServiceTlsSettingsSubjectAltName.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
