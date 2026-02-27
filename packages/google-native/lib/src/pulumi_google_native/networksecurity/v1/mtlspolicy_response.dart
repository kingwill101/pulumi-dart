// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'validation_caresponse.dart';

/// Specification of the MTLSPolicy.
class MTLSPolicyResponse {
  /// Required if the policy is to be used with Traffic Director. For external HTTPS load balancers it must be empty. Defines the mechanism to obtain the Certificate Authority certificate to validate the client certificate.
  final List<ValidationCAResponse> clientValidationCa;

  /// When the client presents an invalid certificate or no certificate to the load balancer, the `client_validation_mode` specifies how the client connection is handled. Required if the policy is to be used with the external HTTPS load balancing. For Traffic Director it must be empty.
  final String clientValidationMode;

  /// Reference to the TrustConfig from certificatemanager.googleapis.com namespace. If specified, the chain validation will be performed against certificates configured in the given TrustConfig. Allowed only if the policy is to be used with external HTTPS load balancers.
  final String clientValidationTrustConfig;

  MTLSPolicyResponse({
    required this.clientValidationCa,
    required this.clientValidationMode,
    required this.clientValidationTrustConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientValidationCa'] =
        Input.encodeList<ValidationCAResponse, Map<String, dynamic>>(
            clientValidationCa, (value) => value.toMap());
    map['clientValidationMode'] = clientValidationMode;
    map['clientValidationTrustConfig'] = clientValidationTrustConfig;
    return map;
  }

  factory MTLSPolicyResponse.fromMap(Map<String, dynamic> map) {
    return MTLSPolicyResponse(
      clientValidationCa: Input.decodeList<ValidationCAResponse>(
          map['clientValidationCa'],
          (value) => ValidationCAResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      clientValidationMode: map['clientValidationMode'] as String,
      clientValidationTrustConfig: map['clientValidationTrustConfig'] as String,
    );
  }
}
