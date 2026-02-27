// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'validation_caresponse_networksecurity_v1beta1.dart';

/// Specification of the MTLSPolicy.
class MTLSPolicyResponseNetworksecurityV1beta1 {
  /// Required if the policy is to be used with Traffic Director. For external HTTPS load balancers it must be empty. Defines the mechanism to obtain the Certificate Authority certificate to validate the client certificate.
  final List<ValidationCAResponseNetworksecurityV1beta1> clientValidationCa;

  /// When the client presents an invalid certificate or no certificate to the load balancer, the `client_validation_mode` specifies how the client connection is handled. Required if the policy is to be used with the external HTTPS load balancing. For Traffic Director it must be empty.
  final String clientValidationMode;

  /// Reference to the TrustConfig from certificatemanager.googleapis.com namespace. If specified, the chain validation will be performed against certificates configured in the given TrustConfig. Allowed only if the policy is to be used with external HTTPS load balancers.
  final String clientValidationTrustConfig;

  MTLSPolicyResponseNetworksecurityV1beta1({
    required this.clientValidationCa,
    required this.clientValidationMode,
    required this.clientValidationTrustConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientValidationCa'] = pulumi.Input.encodeList<
        ValidationCAResponseNetworksecurityV1beta1,
        Map<String, dynamic>>(clientValidationCa, (value) => value.toMap());
    map['clientValidationMode'] = clientValidationMode;
    map['clientValidationTrustConfig'] = clientValidationTrustConfig;
    return map;
  }

  factory MTLSPolicyResponseNetworksecurityV1beta1.fromMap(
      Map<String, dynamic> map) {
    return MTLSPolicyResponseNetworksecurityV1beta1(
      clientValidationCa:
          pulumi.Input.decodeList<ValidationCAResponseNetworksecurityV1beta1>(
              map['clientValidationCa'],
              (value) => ValidationCAResponseNetworksecurityV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      clientValidationMode: map['clientValidationMode'] as String,
      clientValidationTrustConfig: map['clientValidationTrustConfig'] as String,
    );
  }
}
