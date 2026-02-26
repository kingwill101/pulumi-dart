// ignore_for_file: unused_element, unnecessary_cast

import 'awsv4_signature2.dart';

/// The authentication and authorization settings for a BackendService.
class SecuritySettings2 {
  /// [Deprecated] Use clientTlsPolicy instead.
  final String? authentication;

  /// The configuration needed to generate a signature for access to private storage buckets that support AWS's Signature Version 4 for authentication. Allowed only for INTERNET_IP_PORT and INTERNET_FQDN_PORT NEG backends.
  final AWSV4Signature2? awsV4Authentication;

  /// Optional. A URL referring to a networksecurity.ClientTlsPolicy resource that describes how clients should authenticate with this service's backends. clientTlsPolicy only applies to a global BackendService with the loadBalancingScheme set to INTERNAL_SELF_MANAGED. If left blank, communications are not encrypted.
  final String? clientTlsPolicy;

  /// Optional. A list of Subject Alternative Names (SANs) that the client verifies during a mutual TLS handshake with an server/endpoint for this BackendService. When the server presents its X.509 certificate to the client, the client inspects the certificate's subjectAltName field. If the field contains one of the specified values, the communication continues. Otherwise, it fails. This additional check enables the client to verify that the server is authorized to run the requested service. Note that the contents of the server certificate's subjectAltName field are configured by the Public Key Infrastructure which provisions server identities. Only applies to a global BackendService with loadBalancingScheme set to INTERNAL_SELF_MANAGED. Only applies when BackendService has an attached clientTlsPolicy with clientCertificate (mTLS mode).
  final List<String>? subjectAltNames;

  SecuritySettings2({
    this.authentication,
    this.awsV4Authentication,
    this.clientTlsPolicy,
    this.subjectAltNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authenticationValue = authentication;
    if (authenticationValue != null) {
      map['authentication'] = authenticationValue;
    }
    final awsV4AuthenticationValue = awsV4Authentication;
    if (awsV4AuthenticationValue != null) {
      map['awsV4Authentication'] = awsV4AuthenticationValue.toMap();
    }
    final clientTlsPolicyValue = clientTlsPolicy;
    if (clientTlsPolicyValue != null) {
      map['clientTlsPolicy'] = clientTlsPolicyValue;
    }
    final subjectAltNamesValue = subjectAltNames;
    if (subjectAltNamesValue != null) {
      map['subjectAltNames'] = subjectAltNamesValue;
    }
    return map;
  }

  factory SecuritySettings2.fromMap(Map<String, dynamic> map) {
    return SecuritySettings2(
      authentication: map['authentication'] == null
          ? null
          : map['authentication'] as String,
      awsV4Authentication: map['awsV4Authentication'] == null
          ? null
          : AWSV4Signature2.fromMap(
              (map['awsV4Authentication'] as Map).cast<String, dynamic>()),
      clientTlsPolicy: map['clientTlsPolicy'] == null
          ? null
          : map['clientTlsPolicy'] as String,
      subjectAltNames: map['subjectAltNames'] == null
          ? null
          : (map['subjectAltNames'] as List).cast<String>(),
    );
  }
}
