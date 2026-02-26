// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'mtlspolicy_client_validation_mode.dart';
import 'validation_ca.dart';

/// Specification of the MTLSPolicy.
class MTLSPolicy {
  /// Required if the policy is to be used with Traffic Director. For external HTTPS load balancers it must be empty. Defines the mechanism to obtain the Certificate Authority certificate to validate the client certificate.
  final List<ValidationCA>? clientValidationCa;

  /// When the client presents an invalid certificate or no certificate to the load balancer, the `client_validation_mode` specifies how the client connection is handled. Required if the policy is to be used with the external HTTPS load balancing. For Traffic Director it must be empty.
  final MTLSPolicyClientValidationMode? clientValidationMode;

  /// Reference to the TrustConfig from certificatemanager.googleapis.com namespace. If specified, the chain validation will be performed against certificates configured in the given TrustConfig. Allowed only if the policy is to be used with external HTTPS load balancers.
  final String? clientValidationTrustConfig;

  MTLSPolicy({
    this.clientValidationCa,
    this.clientValidationMode,
    this.clientValidationTrustConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientValidationCaValue = clientValidationCa;
    if (clientValidationCaValue != null) {
      map['clientValidationCa'] =
          Input.encodeList<ValidationCA, Map<String, dynamic>>(
              clientValidationCaValue, (value) => value.toMap());
    }
    final clientValidationModeValue = clientValidationMode;
    if (clientValidationModeValue != null) {
      map['clientValidationMode'] = clientValidationModeValue.value;
    }
    final clientValidationTrustConfigValue = clientValidationTrustConfig;
    if (clientValidationTrustConfigValue != null) {
      map['clientValidationTrustConfig'] = clientValidationTrustConfigValue;
    }
    return map;
  }

  factory MTLSPolicy.fromMap(Map<String, dynamic> map) {
    return MTLSPolicy(
      clientValidationCa: map['clientValidationCa'] == null
          ? null
          : Input.decodeList<ValidationCA>(
              map['clientValidationCa'],
              (value) =>
                  ValidationCA.fromMap((value as Map).cast<String, dynamic>())),
      clientValidationMode: map['clientValidationMode'] == null
          ? null
          : MTLSPolicyClientValidationMode.fromValue(
              map['clientValidationMode'] as String),
      clientValidationTrustConfig: map['clientValidationTrustConfig'] == null
          ? null
          : map['clientValidationTrustConfig'] as String,
    );
  }
}
