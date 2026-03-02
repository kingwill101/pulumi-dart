// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'istio_egress_gateway_response.dart';
import 'istio_ingress_gateway_response.dart';

/// Istio components configuration.
class IstioComponentsResponse {
  /// Istio egress gateways.
  final pulumi.Input<List<IstioEgressGatewayResponse>>? egressGateways;
  /// Istio ingress gateways.
  final pulumi.Input<List<IstioIngressGatewayResponse>>? ingressGateways;

  /// Creates a new [IstioComponentsResponse].
  /// [egressGateways] Istio egress gateways.
  /// [ingressGateways] Istio ingress gateways.
  IstioComponentsResponse({
    this.egressGateways,
    this.ingressGateways,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressGateways': ?pulumi.Input.mapOptionalInputValue<List<IstioEgressGatewayResponse>, List<Map<String, dynamic>>>(egressGateways, (value) => pulumi.Input.encodeList<IstioEgressGatewayResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingressGateways': ?pulumi.Input.mapOptionalInputValue<List<IstioIngressGatewayResponse>, List<Map<String, dynamic>>>(ingressGateways, (value) => pulumi.Input.encodeList<IstioIngressGatewayResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IstioComponentsResponse.fromMap(Map<String, dynamic> map) {
    return IstioComponentsResponse(
      egressGateways: map['egressGateways'] == null ? null : (pulumi.Input.decodeList<IstioEgressGatewayResponse>(map['egressGateways']!, (value) => IstioEgressGatewayResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ingressGateways: map['ingressGateways'] == null ? null : (pulumi.Input.decodeList<IstioIngressGatewayResponse>(map['ingressGateways']!, (value) => IstioIngressGatewayResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

