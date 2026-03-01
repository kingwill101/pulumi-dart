// ignore_for_file: unused_element, unnecessary_cast


/// Istio egress gateway configuration.
class IstioEgressGatewayResponse {
  /// Whether to enable the egress gateway.
  final bool enabled;
  /// Name of the gateway configuration custom resource for the Istio add-on egress gateway. Must be specified when enabling the Istio egress gateway. Must be deployed in the same namespace that the Istio egress gateway will be deployed in.
  final String? gatewayConfigurationName;
  /// Name of the Istio add-on egress gateway.
  final String name;
  /// Namespace that the Istio add-on egress gateway should be deployed in. If unspecified, the default is aks-istio-egress.
  final String? namespace;

  /// Creates a new [IstioEgressGatewayResponse].
  /// [enabled] Whether to enable the egress gateway.
  /// [gatewayConfigurationName] Name of the gateway configuration custom resource for the Istio add-on egress gateway. Must be specified when enabling the Istio egress gateway. Must be deployed in the same namespace that the Istio egress gateway will be deployed in.
  /// [name] Name of the Istio add-on egress gateway.
  /// [namespace] Namespace that the Istio add-on egress gateway should be deployed in. If unspecified, the default is aks-istio-egress.
  IstioEgressGatewayResponse({
    required this.enabled,
    this.gatewayConfigurationName,
    required this.name,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'gatewayConfigurationName': ?gatewayConfigurationName,
      'name': name,
      'namespace': ?namespace,
    };
  }

  factory IstioEgressGatewayResponse.fromMap(Map<String, dynamic> map) {
    return IstioEgressGatewayResponse(
      enabled: map['enabled'] as bool,
      gatewayConfigurationName: map['gatewayConfigurationName'] == null ? null : map['gatewayConfigurationName'] as String,
      name: map['name'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}

