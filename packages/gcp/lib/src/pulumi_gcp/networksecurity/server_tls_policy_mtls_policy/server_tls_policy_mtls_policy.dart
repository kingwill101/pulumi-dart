// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../server_tls_policy_mtls_policy_client_validation_ca/server_tls_policy_mtls_policy_client_validation_ca.dart';

class ServerTlsPolicyMtlsPolicy {
  /// Required if the policy is to be used with Traffic Director. For external HTTPS load balancers it must be empty.
  /// Defines the mechanism to obtain the Certificate Authority certificate to validate the client certificate.
  /// Structure is documented below.
  final List<ServerTlsPolicyMtlsPolicyClientValidationCa>? clientValidationCas;

  /// When the client presents an invalid certificate or no certificate to the load balancer, the clientValidationMode specifies how the client connection is handled.
  /// Required if the policy is to be used with the external HTTPS load balancing. For Traffic Director it must be empty.
  /// Possible values are: `CLIENT_VALIDATION_MODE_UNSPECIFIED`, `ALLOW_INVALID_OR_MISSING_CLIENT_CERT`, `REJECT_INVALID`.
  final String? clientValidationMode;

  /// Reference to the TrustConfig from certificatemanager.googleapis.com namespace.
  /// If specified, the chain validation will be performed against certificates configured in the given TrustConfig.
  /// Allowed only if the policy is to be used with external HTTPS load balancers.
  final String? clientValidationTrustConfig;

  ServerTlsPolicyMtlsPolicy({
    this.clientValidationCas,
    this.clientValidationMode,
    this.clientValidationTrustConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientValidationCasValue = clientValidationCas;
    if (clientValidationCasValue != null) {
      map['clientValidationCas'] = Input.encodeList<
              ServerTlsPolicyMtlsPolicyClientValidationCa,
              Map<String, dynamic>>(
          clientValidationCasValue, (value) => value.toMap());
    }
    final clientValidationModeValue = clientValidationMode;
    if (clientValidationModeValue != null) {
      map['clientValidationMode'] = clientValidationModeValue;
    }
    final clientValidationTrustConfigValue = clientValidationTrustConfig;
    if (clientValidationTrustConfigValue != null) {
      map['clientValidationTrustConfig'] = clientValidationTrustConfigValue;
    }
    return map;
  }

  factory ServerTlsPolicyMtlsPolicy.fromMap(Map<String, dynamic> map) {
    return ServerTlsPolicyMtlsPolicy(
      clientValidationCas: map['clientValidationCas'] == null
          ? null
          : Input.decodeList<ServerTlsPolicyMtlsPolicyClientValidationCa>(
              map['clientValidationCas'],
              (value) => ServerTlsPolicyMtlsPolicyClientValidationCa.fromMap(
                  (value as Map).cast<String, dynamic>())),
      clientValidationMode: map['clientValidationMode'] == null
          ? null
          : map['clientValidationMode'] as String,
      clientValidationTrustConfig: map['clientValidationTrustConfig'] == null
          ? null
          : map['clientValidationTrustConfig'] as String,
    );
  }
}
