// ignore_for_file: unused_element, unnecessary_cast

import '../security_gateway_application_upstream_egress_policy/security_gateway_application_upstream_egress_policy.dart';
import '../security_gateway_application_upstream_external/security_gateway_application_upstream_external.dart';
import '../security_gateway_application_upstream_network/security_gateway_application_upstream_network.dart';
import '../security_gateway_application_upstream_proxy_protocol/security_gateway_application_upstream_proxy_protocol.dart';

class SecurityGatewayApplicationUpstream {
  /// Optional. Routing policy information.
  /// Structure is documented below.
  final SecurityGatewayApplicationUpstreamEgressPolicy? egressPolicy;

  /// List of the external endpoints to forward traffic to.
  /// Structure is documented below.
  final SecurityGatewayApplicationUpstreamExternal? external;

  /// Network to forward traffic to.
  /// Structure is documented below.
  final SecurityGatewayApplicationUpstreamNetwork? network;

  /// Shared proxy configuration for all apps.
  /// Structure is documented below.
  final SecurityGatewayApplicationUpstreamProxyProtocol? proxyProtocol;

  SecurityGatewayApplicationUpstream({
    this.egressPolicy,
    this.external,
    this.network,
    this.proxyProtocol,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final egressPolicyValue = egressPolicy;
    if (egressPolicyValue != null) {
      map['egressPolicy'] = egressPolicyValue.toMap();
    }
    final externalValue = external;
    if (externalValue != null) {
      map['external'] = externalValue.toMap();
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue.toMap();
    }
    final proxyProtocolValue = proxyProtocol;
    if (proxyProtocolValue != null) {
      map['proxyProtocol'] = proxyProtocolValue.toMap();
    }
    return map;
  }

  factory SecurityGatewayApplicationUpstream.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayApplicationUpstream(
      egressPolicy: map['egressPolicy'] == null
          ? null
          : SecurityGatewayApplicationUpstreamEgressPolicy.fromMap(
              (map['egressPolicy'] as Map).cast<String, dynamic>()),
      external: map['external'] == null
          ? null
          : SecurityGatewayApplicationUpstreamExternal.fromMap(
              (map['external'] as Map).cast<String, dynamic>()),
      network: map['network'] == null
          ? null
          : SecurityGatewayApplicationUpstreamNetwork.fromMap(
              (map['network'] as Map).cast<String, dynamic>()),
      proxyProtocol: map['proxyProtocol'] == null
          ? null
          : SecurityGatewayApplicationUpstreamProxyProtocol.fromMap(
              (map['proxyProtocol'] as Map).cast<String, dynamic>()),
    );
  }
}
