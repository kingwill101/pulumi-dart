// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'istio_egress_gateway.dart';
import 'istio_ingress_gateway.dart';

/// Istio components configuration.
class IstioComponents {
  /// Istio egress gateways.
  final pulumi.Input<List<IstioEgressGateway>?>? egressGateways;
  /// Istio ingress gateways.
  final pulumi.Input<List<IstioIngressGateway>?>? ingressGateways;

  /// Creates a new [IstioComponents].
  /// [egressGateways] Istio egress gateways.
  /// [ingressGateways] Istio ingress gateways.
  const IstioComponents({
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
      egressGateways: (() { final guardedValue = map['egressGateways']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IstioEgressGateway>(guardedValue, (value) => IstioEgressGateway.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ingressGateways: (() { final guardedValue = map['ingressGateways']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IstioIngressGateway>(guardedValue, (value) => IstioIngressGateway.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
