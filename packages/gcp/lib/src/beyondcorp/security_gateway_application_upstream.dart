// ignore_for_file: unused_element, unnecessary_cast

import 'security_gateway_application_upstream_egress_policy.dart';
import 'security_gateway_application_upstream_external.dart';
import 'security_gateway_application_upstream_network.dart';
import 'security_gateway_application_upstream_proxy_protocol.dart';

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

  /// Creates a new [SecurityGatewayApplicationUpstream].
  /// [egressPolicy] Optional. Routing policy information.
  /// [external] List of the external endpoints to forward traffic to.
  /// [network] Network to forward traffic to.
  /// [proxyProtocol] Shared proxy configuration for all apps.
  SecurityGatewayApplicationUpstream({
    this.egressPolicy,
    this.external,
    this.network,
    this.proxyProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressPolicy': ?egressPolicy == null ? null : egressPolicy!.toMap(),
      'external': ?external == null ? null : external!.toMap(),
      'network': ?network == null ? null : network!.toMap(),
      'proxyProtocol': ?proxyProtocol == null ? null : proxyProtocol!.toMap(),
    };
  }

  factory SecurityGatewayApplicationUpstream.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayApplicationUpstream(
      egressPolicy: map['egressPolicy'] == null
          ? null
          : SecurityGatewayApplicationUpstreamEgressPolicy.fromMap(
              (map['egressPolicy'] as Map).cast<String, dynamic>(),
            ),
      external: map['external'] == null
          ? null
          : SecurityGatewayApplicationUpstreamExternal.fromMap(
              (map['external'] as Map).cast<String, dynamic>(),
            ),
      network: map['network'] == null
          ? null
          : SecurityGatewayApplicationUpstreamNetwork.fromMap(
              (map['network'] as Map).cast<String, dynamic>(),
            ),
      proxyProtocol: map['proxyProtocol'] == null
          ? null
          : SecurityGatewayApplicationUpstreamProxyProtocol.fromMap(
              (map['proxyProtocol'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
