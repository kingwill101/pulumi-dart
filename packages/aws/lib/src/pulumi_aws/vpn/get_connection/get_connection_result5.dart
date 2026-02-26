// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_connection_filter/get_connection_filter.dart';
import '../get_connection_route/get_connection_route.dart';
import '../get_connection_vgw_telemetry/get_connection_vgw_telemetry.dart';

/// Result data returned by getConnection.
class GetConnectionResult5 {
  /// Category of the VPN connection. A value of VPN indicates an AWS VPN connection. A value of VPN-Classic indicates an AWS Classic VPN connection.
  final String category;

  /// ARN of the core network.
  final String coreNetworkArn;

  /// ARN of the core network attachment.
  final String coreNetworkAttachmentArn;

  /// Configuration information for the VPN connection's customer gateway (in the native XML format).
  final String customerGatewayConfiguration;

  /// ID of the customer gateway at your end of the VPN connection.
  final String customerGatewayId;
  final List<GetConnectionFilter>? filters;

  /// Current state of the gateway association.
  final String gatewayAssociationState;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// (ARN) of the Secrets Manager secret storing the pre-shared key(s) for the VPN connection.
  final String preSharedKeyArn;
  final String region;

  /// List of static routes associated with the VPN connection.
  final List<GetConnectionRoute> routes;

  /// Current state of the VPN connection.
  final String state;

  /// Tags associated to the VPN Connection.
  final Map<String, String> tags;

  /// ID of a transit gateway associated with the VPN connection.
  final String transitGatewayId;

  /// Type of VPN connection. Currently the only supported type is ipsec.1.
  final String type;

  /// List of objects containing information about the VPN tunnel.
  final List<GetConnectionVgwTelemetry> vgwTelemetries;

  /// ID of a VPN concentrator associated with the VPN connection.
  final String vpnConcentratorId;
  final String vpnConnectionId;

  /// ID of a virtual private gateway associated with the VPN connection.
  final String vpnGatewayId;

  GetConnectionResult5({
    required this.category,
    required this.coreNetworkArn,
    required this.coreNetworkAttachmentArn,
    required this.customerGatewayConfiguration,
    required this.customerGatewayId,
    this.filters,
    required this.gatewayAssociationState,
    required this.id,
    required this.preSharedKeyArn,
    required this.region,
    required this.routes,
    required this.state,
    required this.tags,
    required this.transitGatewayId,
    required this.type,
    required this.vgwTelemetries,
    required this.vpnConcentratorId,
    required this.vpnConnectionId,
    required this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['category'] = category;
    map['coreNetworkArn'] = coreNetworkArn;
    map['coreNetworkAttachmentArn'] = coreNetworkAttachmentArn;
    map['customerGatewayConfiguration'] = customerGatewayConfiguration;
    map['customerGatewayId'] = customerGatewayId;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetConnectionFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['gatewayAssociationState'] = gatewayAssociationState;
    map['id'] = id;
    map['preSharedKeyArn'] = preSharedKeyArn;
    map['region'] = region;
    map['routes'] = Input.encodeList<GetConnectionRoute, Map<String, dynamic>>(
        routes, (value) => value.toMap());
    map['state'] = state;
    map['tags'] = tags;
    map['transitGatewayId'] = transitGatewayId;
    map['type'] = type;
    map['vgwTelemetries'] =
        Input.encodeList<GetConnectionVgwTelemetry, Map<String, dynamic>>(
            vgwTelemetries, (value) => value.toMap());
    map['vpnConcentratorId'] = vpnConcentratorId;
    map['vpnConnectionId'] = vpnConnectionId;
    map['vpnGatewayId'] = vpnGatewayId;
    return map;
  }

  factory GetConnectionResult5.fromMap(Map<String, dynamic> map) {
    return GetConnectionResult5(
      category: map['category'] as String,
      coreNetworkArn: map['coreNetworkArn'] as String,
      coreNetworkAttachmentArn: map['coreNetworkAttachmentArn'] as String,
      customerGatewayConfiguration:
          map['customerGatewayConfiguration'] as String,
      customerGatewayId: map['customerGatewayId'] as String,
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetConnectionFilter>(
              map['filters'],
              (value) => GetConnectionFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      gatewayAssociationState: map['gatewayAssociationState'] as String,
      id: map['id'] as String,
      preSharedKeyArn: map['preSharedKeyArn'] as String,
      region: map['region'] as String,
      routes: Input.decodeList<GetConnectionRoute>(
          map['routes'],
          (value) => GetConnectionRoute.fromMap(
              (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      transitGatewayId: map['transitGatewayId'] as String,
      type: map['type'] as String,
      vgwTelemetries: Input.decodeList<GetConnectionVgwTelemetry>(
          map['vgwTelemetries'],
          (value) => GetConnectionVgwTelemetry.fromMap(
              (value as Map).cast<String, dynamic>())),
      vpnConcentratorId: map['vpnConcentratorId'] as String,
      vpnConnectionId: map['vpnConnectionId'] as String,
      vpnGatewayId: map['vpnGatewayId'] as String,
    );
  }
}
