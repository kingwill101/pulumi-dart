// ignore_for_file: unused_element, unnecessary_cast


/// Istio ingress gateway configuration. For now, we support up to one external ingress gateway named `aks-istio-ingressgateway-external` and one internal ingress gateway named `aks-istio-ingressgateway-internal`.
class IstioIngressGateway {
  /// Whether to enable the ingress gateway.
  final bool enabled;
  /// Mode of an ingress gateway.
  final String mode;

  /// Creates a new [IstioIngressGateway].
  /// [enabled] Whether to enable the ingress gateway.
  /// [mode] Mode of an ingress gateway.
  IstioIngressGateway({
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
      enabled: map['enabled'] as bool,
      mode: map['mode'] as String,
    );
  }
}

