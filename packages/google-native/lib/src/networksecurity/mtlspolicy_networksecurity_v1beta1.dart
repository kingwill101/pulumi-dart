// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mtlspolicy_client_validation_mode_networksecurity_v1beta1.dart';
import 'validation_canetworksecurity_v1beta1.dart';

/// Specification of the MTLSPolicy.
class MTLSPolicyNetworksecurityV1beta1 {
  /// Required if the policy is to be used with Traffic Director. For external HTTPS load balancers it must be empty. Defines the mechanism to obtain the Certificate Authority certificate to validate the client certificate.
  final List<ValidationCANetworksecurityV1beta1>? clientValidationCa;
  /// When the client presents an invalid certificate or no certificate to the load balancer, the `client_validation_mode` specifies how the client connection is handled. Required if the policy is to be used with the external HTTPS load balancing. For Traffic Director it must be empty.
  final MTLSPolicyClientValidationModeNetworksecurityV1beta1? clientValidationMode;
  /// Reference to the TrustConfig from certificatemanager.googleapis.com namespace. If specified, the chain validation will be performed against certificates configured in the given TrustConfig. Allowed only if the policy is to be used with external HTTPS load balancers.
  final String? clientValidationTrustConfig;

  /// Creates a new [MTLSPolicyNetworksecurityV1beta1].
  /// [clientValidationCa] Required if the policy is to be used with Traffic Director. For external HTTPS load balancers it must be empty. Defines the mechanism to obtain the Certificate Authority certificate to validate the client certificate.
  /// [clientValidationMode] When the client presents an invalid certificate or no certificate to the load balancer, the `client_validation_mode` specifies how the client connection is handled. Required if the policy is to be used with the external HTTPS load balancing. For Traffic Director it must be empty.
  /// [clientValidationTrustConfig] Reference to the TrustConfig from certificatemanager.googleapis.com namespace. If specified, the chain validation will be performed against certificates configured in the given TrustConfig. Allowed only if the policy is to be used with external HTTPS load balancers.
  MTLSPolicyNetworksecurityV1beta1({
    this.clientValidationCa,
    this.clientValidationMode,
    this.clientValidationTrustConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientValidationCa': ?clientValidationCa == null ? null : pulumi.Input.encodeList<ValidationCANetworksecurityV1beta1, Map<String, dynamic>>(clientValidationCa!, (value) => value.toMap()),
      'clientValidationMode': ?clientValidationMode == null ? null : clientValidationMode!.value,
      'clientValidationTrustConfig': ?clientValidationTrustConfig,
    };
  }

  factory MTLSPolicyNetworksecurityV1beta1.fromMap(Map<String, dynamic> map) {
    return MTLSPolicyNetworksecurityV1beta1(
      clientValidationCa: map['clientValidationCa'] == null ? null : pulumi.Input.decodeList<ValidationCANetworksecurityV1beta1>(map['clientValidationCa'], (value) => ValidationCANetworksecurityV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      clientValidationMode: map['clientValidationMode'] == null ? null : MTLSPolicyClientValidationModeNetworksecurityV1beta1.fromValue(map['clientValidationMode'] as String),
      clientValidationTrustConfig: map['clientValidationTrustConfig'] == null ? null : map['clientValidationTrustConfig'] as String,
    );
  }
}

