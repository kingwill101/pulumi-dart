// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'istio_egress_gateway.dart';
import 'istio_ingress_gateway.dart';

/// Istio components configuration.
class IstioComponents {
  /// Istio egress gateways.
  final pulumi.Input<List<IstioEgressGateway>>? egressGateways;
  /// Istio ingress gateways.
  final pulumi.Input<List<IstioIngressGateway>>? ingressGateways;

  /// Creates a new [IstioComponents].
  /// [egressGateways] Istio egress gateways.
  /// [ingressGateways] Istio ingress gateways.
  IstioComponents({
    this.egressGateways,
    this.ingressGateways,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressGateways': ?pulumi.Input.mapOptionalInputValue<List<IstioEgressGateway>, List<Map<String, dynamic>>>(egressGateways, (value) => pulumi.Input.encodeList<IstioEgressGateway, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingressGateways': ?pulumi.Input.mapOptionalInputValue<List<IstioIngressGateway>, List<Map<String, dynamic>>>(ingressGateways, (value) => pulumi.Input.encodeList<IstioIngressGateway, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IstioComponents.fromMap(Map<String, dynamic> map) {
    return IstioComponents(
      egressGateways: map['egressGateways'] == null ? null : (pulumi.Input.decodeList<IstioEgressGateway>(map['egressGateways'], (value) => IstioEgressGateway.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ingressGateways: map['ingressGateways'] == null ? null : (pulumi.Input.decodeList<IstioIngressGateway>(map['ingressGateways'], (value) => IstioIngressGateway.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

