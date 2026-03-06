// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Istio ingress gateway configuration. For now, we support up to one external ingress gateway named `aks-istio-ingressgateway-external` and one internal ingress gateway named `aks-istio-ingressgateway-internal`.
class IstioIngressGateway {
  /// Whether to enable the ingress gateway.
  final pulumi.Input<bool> enabled;
  /// Mode of an ingress gateway.
  final pulumi.Input<String> mode;

  /// Creates a new [IstioIngressGateway].
  /// [enabled] Whether to enable the ingress gateway.
  /// [mode] Mode of an ingress gateway.
  const IstioIngressGateway({
    required this.enabled,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'mode': mode,
    };
  }

  factory IstioIngressGateway.fromMap(Map<String, dynamic> map) {
    return IstioIngressGateway(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

