// ignore_for_file: unused_element, unnecessary_cast

import 'authentication_policy_response.dart';
import 'authorization_config_response.dart';
import 'awsv4_signature_response.dart';
import 'client_tls_settings_response.dart';

/// The authentication and authorization settings for a BackendService.
class SecuritySettingsResponse {
  /// [Deprecated] Use clientTlsPolicy instead.
  final String authentication;

  /// [Deprecated] Authentication policy defines what authentication methods can be accepted on backends, and if authenticated, which method/certificate will set the request principal. request principal.
  final AuthenticationPolicyResponse authenticationPolicy;

  /// [Deprecated] Authorization config defines the Role Based Access Control (RBAC) config. Authorization config defines the Role Based Access Control (RBAC) config.
  final AuthorizationConfigResponse authorizationConfig;

  /// The configuration needed to generate a signature for access to private storage buckets that support AWS's Signature Version 4 for authentication. Allowed only for INTERNET_IP_PORT and INTERNET_FQDN_PORT NEG backends.
  final AWSV4SignatureResponse awsV4Authentication;

  /// Optional. A URL referring to a networksecurity.ClientTlsPolicy resource that describes how clients should authenticate with this service's backends. clientTlsPolicy only applies to a global BackendService with the loadBalancingScheme set to INTERNAL_SELF_MANAGED. If left blank, communications are not encrypted.
  final String clientTlsPolicy;

  /// [Deprecated] TLS Settings for the backend service.
  final ClientTlsSettingsResponse clientTlsSettings;

  /// Optional. A list of Subject Alternative Names (SANs) that the client verifies during a mutual TLS handshake with an server/endpoint for this BackendService. When the server presents its X.509 certificate to the client, the client inspects the certificate's subjectAltName field. If the field contains one of the specified values, the communication continues. Otherwise, it fails. This additional check enables the client to verify that the server is authorized to run the requested service. Note that the contents of the server certificate's subjectAltName field are configured by the Public Key Infrastructure which provisions server identities. Only applies to a global BackendService with loadBalancingScheme set to INTERNAL_SELF_MANAGED. Only applies when BackendService has an attached clientTlsPolicy with clientCertificate (mTLS mode).
  final List<String> subjectAltNames;

  /// Creates a new [SecuritySettingsResponse].
  /// [authentication] [Deprecated] Use clientTlsPolicy instead.
  /// [authenticationPolicy] [Deprecated] Authentication policy defines what authentication methods can be accepted on backends, and if authenticated, which method/certificate will set the request principal. request principal.
  /// [authorizationConfig] [Deprecated] Authorization config defines the Role Based Access Control (RBAC) config. Authorization config defines the Role Based Access Control (RBAC) config.
  /// [awsV4Authentication] The configuration needed to generate a signature for access to private storage buckets that support AWS's Signature Version 4 for authentication. Allowed only for INTERNET_IP_PORT and INTERNET_FQDN_PORT NEG backends.
  /// [clientTlsPolicy] Optional. A URL referring to a networksecurity.ClientTlsPolicy resource that describes how clients should authenticate with this service's backends. clientTlsPolicy only applies to a global BackendService with the loadBalancingScheme set to INTERNAL_SELF_MANAGED. If left blank, communications are not encrypted.
  /// [clientTlsSettings] [Deprecated] TLS Settings for the backend service.
  /// [subjectAltNames] Optional. A list of Subject Alternative Names (SANs) that the client verifies during a mutual TLS handshake with an server/endpoint for this BackendService. When the server presents its X.509 certificate to the client, the client inspects the certificate's subjectAltName field. If the field contains one of the specified values, the communication continues. Otherwise, it fails. This additional check enables the client to verify that the server is authorized to run the requested service. Note that the contents of the server certificate's subjectAltName field are configured by the Public Key Infrastructure which provisions server identities. Only applies to a global BackendService with loadBalancingScheme set to INTERNAL_SELF_MANAGED. Only applies when BackendService has an attached clientTlsPolicy with clientCertificate (mTLS mode).
  SecuritySettingsResponse({
    required this.authentication,
    required this.authenticationPolicy,
    required this.authorizationConfig,
    required this.awsV4Authentication,
    required this.clientTlsPolicy,
    required this.clientTlsSettings,
    required this.subjectAltNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authentication'] = authentication;
    map['authenticationPolicy'] = authenticationPolicy.toMap();
    map['authorizationConfig'] = authorizationConfig.toMap();
    map['awsV4Authentication'] = awsV4Authentication.toMap();
    map['clientTlsPolicy'] = clientTlsPolicy;
    map['clientTlsSettings'] = clientTlsSettings.toMap();
    map['subjectAltNames'] = subjectAltNames;
    return map;
  }

  factory SecuritySettingsResponse.fromMap(Map<String, dynamic> map) {
    return SecuritySettingsResponse(
      authentication: map['authentication'] as String,
      authenticationPolicy: AuthenticationPolicyResponse.fromMap(
          (map['authenticationPolicy'] as Map).cast<String, dynamic>()),
      authorizationConfig: AuthorizationConfigResponse.fromMap(
          (map['authorizationConfig'] as Map).cast<String, dynamic>()),
      awsV4Authentication: AWSV4SignatureResponse.fromMap(
          (map['awsV4Authentication'] as Map).cast<String, dynamic>()),
      clientTlsPolicy: map['clientTlsPolicy'] as String,
      clientTlsSettings: ClientTlsSettingsResponse.fromMap(
          (map['clientTlsSettings'] as Map).cast<String, dynamic>()),
      subjectAltNames: (map['subjectAltNames'] as List).cast<String>(),
    );
  }
}
