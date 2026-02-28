// ignore_for_file: unused_element, unnecessary_cast

import 'authentication_policy.dart';
import 'authorization_config.dart';
import 'awsv4_signature.dart';
import 'client_tls_settings.dart';

/// The authentication and authorization settings for a BackendService.
class SecuritySettings {
  /// [Deprecated] Use clientTlsPolicy instead.
  final String? authentication;
  /// [Deprecated] Authentication policy defines what authentication methods can be accepted on backends, and if authenticated, which method/certificate will set the request principal. request principal.
  final AuthenticationPolicy? authenticationPolicy;
  /// [Deprecated] Authorization config defines the Role Based Access Control (RBAC) config. Authorization config defines the Role Based Access Control (RBAC) config.
  final AuthorizationConfig? authorizationConfig;
  /// The configuration needed to generate a signature for access to private storage buckets that support AWS's Signature Version 4 for authentication. Allowed only for INTERNET_IP_PORT and INTERNET_FQDN_PORT NEG backends.
  final AWSV4Signature? awsV4Authentication;
  /// Optional. A URL referring to a networksecurity.ClientTlsPolicy resource that describes how clients should authenticate with this service's backends. clientTlsPolicy only applies to a global BackendService with the loadBalancingScheme set to INTERNAL_SELF_MANAGED. If left blank, communications are not encrypted.
  final String? clientTlsPolicy;
  /// [Deprecated] TLS Settings for the backend service.
  final ClientTlsSettings? clientTlsSettings;
  /// Optional. A list of Subject Alternative Names (SANs) that the client verifies during a mutual TLS handshake with an server/endpoint for this BackendService. When the server presents its X.509 certificate to the client, the client inspects the certificate's subjectAltName field. If the field contains one of the specified values, the communication continues. Otherwise, it fails. This additional check enables the client to verify that the server is authorized to run the requested service. Note that the contents of the server certificate's subjectAltName field are configured by the Public Key Infrastructure which provisions server identities. Only applies to a global BackendService with loadBalancingScheme set to INTERNAL_SELF_MANAGED. Only applies when BackendService has an attached clientTlsPolicy with clientCertificate (mTLS mode).
  final List<String>? subjectAltNames;

  /// Creates a new [SecuritySettings].
  /// [authentication] [Deprecated] Use clientTlsPolicy instead.
  /// [authenticationPolicy] [Deprecated] Authentication policy defines what authentication methods can be accepted on backends, and if authenticated, which method/certificate will set the request principal. request principal.
  /// [authorizationConfig] [Deprecated] Authorization config defines the Role Based Access Control (RBAC) config. Authorization config defines the Role Based Access Control (RBAC) config.
  /// [awsV4Authentication] The configuration needed to generate a signature for access to private storage buckets that support AWS's Signature Version 4 for authentication. Allowed only for INTERNET_IP_PORT and INTERNET_FQDN_PORT NEG backends.
  /// [clientTlsPolicy] Optional. A URL referring to a networksecurity.ClientTlsPolicy resource that describes how clients should authenticate with this service's backends. clientTlsPolicy only applies to a global BackendService with the loadBalancingScheme set to INTERNAL_SELF_MANAGED. If left blank, communications are not encrypted.
  /// [clientTlsSettings] [Deprecated] TLS Settings for the backend service.
  /// [subjectAltNames] Optional. A list of Subject Alternative Names (SANs) that the client verifies during a mutual TLS handshake with an server/endpoint for this BackendService. When the server presents its X.509 certificate to the client, the client inspects the certificate's subjectAltName field. If the field contains one of the specified values, the communication continues. Otherwise, it fails. This additional check enables the client to verify that the server is authorized to run the requested service. Note that the contents of the server certificate's subjectAltName field are configured by the Public Key Infrastructure which provisions server identities. Only applies to a global BackendService with loadBalancingScheme set to INTERNAL_SELF_MANAGED. Only applies when BackendService has an attached clientTlsPolicy with clientCertificate (mTLS mode).
  SecuritySettings({
    this.authentication,
    this.authenticationPolicy,
    this.authorizationConfig,
    this.awsV4Authentication,
    this.clientTlsPolicy,
    this.clientTlsSettings,
    this.subjectAltNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?authentication,
      'authenticationPolicy': ?authenticationPolicy == null ? null : authenticationPolicy!.toMap(),
      'authorizationConfig': ?authorizationConfig == null ? null : authorizationConfig!.toMap(),
      'awsV4Authentication': ?awsV4Authentication == null ? null : awsV4Authentication!.toMap(),
      'clientTlsPolicy': ?clientTlsPolicy,
      'clientTlsSettings': ?clientTlsSettings == null ? null : clientTlsSettings!.toMap(),
      'subjectAltNames': ?subjectAltNames,
    };
  }

  factory SecuritySettings.fromMap(Map<String, dynamic> map) {
    return SecuritySettings(
      authentication: map['authentication'] == null ? null : map['authentication'] as String,
      authenticationPolicy: map['authenticationPolicy'] == null ? null : AuthenticationPolicy.fromMap((map['authenticationPolicy'] as Map).cast<String, dynamic>()),
      authorizationConfig: map['authorizationConfig'] == null ? null : AuthorizationConfig.fromMap((map['authorizationConfig'] as Map).cast<String, dynamic>()),
      awsV4Authentication: map['awsV4Authentication'] == null ? null : AWSV4Signature.fromMap((map['awsV4Authentication'] as Map).cast<String, dynamic>()),
      clientTlsPolicy: map['clientTlsPolicy'] == null ? null : map['clientTlsPolicy'] as String,
      clientTlsSettings: map['clientTlsSettings'] == null ? null : ClientTlsSettings.fromMap((map['clientTlsSettings'] as Map).cast<String, dynamic>()),
      subjectAltNames: map['subjectAltNames'] == null ? null : (map['subjectAltNames'] as List).cast<String>(),
    );
  }
}

