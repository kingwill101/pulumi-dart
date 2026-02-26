// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'mtlspolicy_client_validation_mode2.dart';
import 'validation_ca2.dart';

/// Specification of the MTLSPolicy.
class MTLSPolicy2 {
  /// Required if the policy is to be used with Traffic Director. For external HTTPS load balancers it must be empty. Defines the mechanism to obtain the Certificate Authority certificate to validate the client certificate.
  final List<ValidationCA2>? clientValidationCa;

  /// When the client presents an invalid certificate or no certificate to the load balancer, the `client_validation_mode` specifies how the client connection is handled. Required if the policy is to be used with the external HTTPS load balancing. For Traffic Director it must be empty.
  final MTLSPolicyClientValidationMode2? clientValidationMode;

  /// Reference to the TrustConfig from certificatemanager.googleapis.com namespace. If specified, the chain validation will be performed against certificates configured in the given TrustConfig. Allowed only if the policy is to be used with external HTTPS load balancers.
  final String? clientValidationTrustConfig;

  MTLSPolicy2({
    this.clientValidationCa,
    this.clientValidationMode,
    this.clientValidationTrustConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientValidationCaValue = clientValidationCa;
    if (clientValidationCaValue != null) {
      map['clientValidationCa'] =
          Input.encodeList<ValidationCA2, Map<String, dynamic>>(
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

  factory MTLSPolicy2.fromMap(Map<String, dynamic> map) {
    return MTLSPolicy2(
      clientValidationCa: map['clientValidationCa'] == null
          ? null
          : Input.decodeList<ValidationCA2>(
              map['clientValidationCa'],
              (value) => ValidationCA2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      clientValidationMode: map['clientValidationMode'] == null
          ? null
          : MTLSPolicyClientValidationMode2.fromValue(
              map['clientValidationMode'] as String),
      clientValidationTrustConfig: map['clientValidationTrustConfig'] == null
          ? null
          : map['clientValidationTrustConfig'] as String,
    );
  }
}
