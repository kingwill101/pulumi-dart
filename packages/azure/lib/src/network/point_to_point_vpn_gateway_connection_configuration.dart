// ignore_for_file: unused_element, unnecessary_cast

import 'point_to_point_vpn_gateway_connection_configuration_route.dart';
import 'point_to_point_vpn_gateway_connection_configuration_vpn_client_address_pool.dart';

class PointToPointVpnGatewayConnectionConfiguration {
  /// Should Internet Security be enabled to secure internet traffic? Defaults to `false`.
  final bool? internetSecurityEnabled;
  /// The Name which should be used for this Connection Configuration.
  final String name;
  /// A `route` block as defined below.
  final PointToPointVpnGatewayConnectionConfigurationRoute? route;
  /// A `vpn_client_address_pool` block as defined below.
  final PointToPointVpnGatewayConnectionConfigurationVpnClientAddressPool vpnClientAddressPool;

  /// Creates a new [PointToPointVpnGatewayConnectionConfiguration].
  /// [internetSecurityEnabled] Should Internet Security be enabled to secure internet traffic? Defaults to `false`.
  /// [name] The Name which should be used for this Connection Configuration.
  /// [route] A `route` block as defined below.
  /// [vpnClientAddressPool] A `vpn_client_address_pool` block as defined below.
  PointToPointVpnGatewayConnectionConfiguration({
    this.internetSecurityEnabled,
    required this.name,
    this.route,
    required this.vpnClientAddressPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internetSecurityEnabled': ?internetSecurityEnabled,
      'name': name,
      'route': ?route == null ? null : route!.toMap(),
      'vpnClientAddressPool': vpnClientAddressPool.toMap(),
    };
  }

  factory PointToPointVpnGatewayConnectionConfiguration.fromMap(Map<String, dynamic> map) {
    return PointToPointVpnGatewayConnectionConfiguration(
      internetSecurityEnabled: map['internetSecurityEnabled'] == null ? null : map['internetSecurityEnabled'] as bool,
      name: map['name'] as String,
      route: map['route'] == null ? null : PointToPointVpnGatewayConnectionConfigurationRoute.fromMap((map['route'] as Map).cast<String, dynamic>()),
      vpnClientAddressPool: PointToPointVpnGatewayConnectionConfigurationVpnClientAddressPool.fromMap((map['vpnClientAddressPool'] as Map).cast<String, dynamic>()),
    );
  }
}

