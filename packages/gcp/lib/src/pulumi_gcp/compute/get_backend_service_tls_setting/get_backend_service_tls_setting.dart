// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_backend_service_tls_setting_subject_alt_name/get_backend_service_tls_setting_subject_alt_name.dart';

class GetBackendServiceTlsSetting {
  /// Reference to the BackendAuthenticationConfig resource from the networksecurity.googleapis.com namespace.
  /// Can be used in authenticating TLS connections to the backend, as specified by the authenticationMode field.
  /// Can only be specified if authenticationMode is not NONE.
  final String authenticationConfig;

  /// Server Name Indication - see RFC3546 section 3.1. If set, the load balancer sends this string as the SNI hostname in the
  /// TLS connection to the backend, and requires that this string match a Subject Alternative Name (SAN) in the backend's
  /// server certificate. With a Regional Internet NEG backend, if the SNI is specified here, the load balancer uses it
  /// regardless of whether the Regional Internet NEG is specified with FQDN or IP address and port.
  final String sni;

  /// A list of Subject Alternative Names (SANs) that the Load Balancer verifies during a TLS handshake with the backend.
  /// When the server presents its X.509 certificate to the Load Balancer, the Load Balancer inspects the certificate's SAN field,
  /// and requires that at least one SAN match one of the subjectAltNames in the list. This field is limited to 5 entries.
  /// When both sni and subjectAltNames are specified, the load balancer matches the backend certificate's SAN only to
  /// subjectAltNames.
  final List<GetBackendServiceTlsSettingSubjectAltName> subjectAltNames;

  GetBackendServiceTlsSetting({
    required this.authenticationConfig,
    required this.sni,
    required this.subjectAltNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authenticationConfig'] = authenticationConfig;
    map['sni'] = sni;
    map['subjectAltNames'] = pulumi.Input.encodeList<
        GetBackendServiceTlsSettingSubjectAltName,
        Map<String, dynamic>>(subjectAltNames, (value) => value.toMap());
    return map;
  }

  factory GetBackendServiceTlsSetting.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceTlsSetting(
      authenticationConfig: map['authenticationConfig'] as String,
      sni: map['sni'] as String,
      subjectAltNames:
          pulumi.Input.decodeList<GetBackendServiceTlsSettingSubjectAltName>(
              map['subjectAltNames'],
              (value) => GetBackendServiceTlsSettingSubjectAltName.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
