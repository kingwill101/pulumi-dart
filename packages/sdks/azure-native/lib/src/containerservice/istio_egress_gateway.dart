// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Istio egress gateway configuration.
class IstioEgressGateway {
  /// Whether to enable the egress gateway.
  final pulumi.Input<bool> enabled;
  /// Name of the gateway configuration custom resource for the Istio add-on egress gateway. Must be specified when enabling the Istio egress gateway. Must be deployed in the same namespace that the Istio egress gateway will be deployed in.
  final pulumi.Input<String>? gatewayConfigurationName;
  /// Name of the Istio add-on egress gateway.
  final pulumi.Input<String> name;
  /// Namespace that the Istio add-on egress gateway should be deployed in. If unspecified, the default is aks-istio-egress.
  final pulumi.Input<String>? namespace;

  /// Creates a new [IstioEgressGateway].
  /// [enabled] Whether to enable the egress gateway.
  /// [gatewayConfigurationName] Name of the gateway configuration custom resource for the Istio add-on egress gateway. Must be specified when enabling the Istio egress gateway. Must be deployed in the same namespace that the Istio egress gateway will be deployed in.
  /// [name] Name of the Istio add-on egress gateway.
  /// [namespace] Namespace that the Istio add-on egress gateway should be deployed in. If unspecified, the default is aks-istio-egress.
  IstioEgressGateway({
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

  factory IstioEgressGateway.fromMap(Map<String, dynamic> map) {
    return IstioEgressGateway(
      enabled: (map['enabled'] as bool).input(),
      gatewayConfigurationName: map['gatewayConfigurationName'] == null ? null : (map['gatewayConfigurationName'] as String).input(),
      name: (map['name'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
    );
  }
}

