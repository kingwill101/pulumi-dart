// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_connection_filter.dart';
import 'get_vpn_connection_route.dart';
import 'get_vpn_connection_vgw_telemetry.dart';

/// Result data returned by getVpnConnection.
class GetVpnConnectionResult {
  /// Category of the VPN connection. A value of VPN indicates an AWS VPN connection. A value of VPN-Classic indicates an AWS Classic VPN connection.
  final String? category;
  /// ARN of the core network.
  final String? coreNetworkArn;
  /// ARN of the core network attachment.
  final String? coreNetworkAttachmentArn;
  /// Configuration information for the VPN connection's customer gateway (in the native XML format).
  final String? customerGatewayConfiguration;
  /// ID of the customer gateway at your end of the VPN connection.
  final String? customerGatewayId;
  final List<GetVpnConnectionFilter>? filters;
  /// Current state of the gateway association.
  final String? gatewayAssociationState;
  /// (ARN) of the Secrets Manager secret storing the pre-shared key(s) for the VPN connection.
  final String? preSharedKeyArn;
  final String? region;
  /// List of static routes associated with the VPN connection.
  final List<GetVpnConnectionRoute>? routes;
  /// Current state of the VPN connection.
  final String? state;
  /// Tags associated to the VPN Connection.
  final Map<String, String>? tags;
  /// ID of a transit gateway associated with the VPN connection.
  final String? transitGatewayId;
  /// Type of VPN connection. Currently the only supported type is ipsec.1.
  final String? type;
  /// List of objects containing information about the VPN tunnel.
  final List<GetVpnConnectionVgwTelemetry>? vgwTelemetries;
  /// ID of a VPN concentrator associated with the VPN connection.
  final String? vpnConcentratorId;
  final String? vpnConnectionId;
  /// ID of a virtual private gateway associated with the VPN connection.
  final String? vpnGatewayId;

  /// Creates a new [GetVpnConnectionResult].
  /// [category] Category of the VPN connection. A value of VPN indicates an AWS VPN connection. A value of VPN-Classic indicates an AWS Classic VPN connection.
  /// [coreNetworkArn] ARN of the core network.
  /// [coreNetworkAttachmentArn] ARN of the core network attachment.
  /// [customerGatewayConfiguration] Configuration information for the VPN connection's customer gateway (in the native XML format).
  /// [customerGatewayId] ID of the customer gateway at your end of the VPN connection.
  /// [filters] Optional.
  /// [gatewayAssociationState] Current state of the gateway association.
  /// [preSharedKeyArn] (ARN) of the Secrets Manager secret storing the pre-shared key(s) for the VPN connection.
  /// [region] Optional.
  /// [routes] List of static routes associated with the VPN connection.
  /// [state] Current state of the VPN connection.
  /// [tags] Tags associated to the VPN Connection.
  /// [transitGatewayId] ID of a transit gateway associated with the VPN connection.
  /// [type] Type of VPN connection. Currently the only supported type is ipsec.1.
  /// [vgwTelemetries] List of objects containing information about the VPN tunnel.
  /// [vpnConcentratorId] ID of a VPN concentrator associated with the VPN connection.
  /// [vpnConnectionId] Optional.
  /// [vpnGatewayId] ID of a virtual private gateway associated with the VPN connection.
  const GetVpnConnectionResult({
    this.category,
    this.coreNetworkArn,
    this.coreNetworkAttachmentArn,
    this.customerGatewayConfiguration,
    this.customerGatewayId,
    this.filters,
    this.gatewayAssociationState,
    this.preSharedKeyArn,
    this.region,
    this.routes,
    this.state,
    this.tags,
    this.transitGatewayId,
    this.type,
    this.vgwTelemetries,
    this.vpnConcentratorId,
    this.vpnConnectionId,
    this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'coreNetworkArn': ?coreNetworkArn,
      'coreNetworkAttachmentArn': ?coreNetworkAttachmentArn,
      'customerGatewayConfiguration': ?customerGatewayConfiguration,
      'customerGatewayId': ?customerGatewayId,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpnConnectionFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'gatewayAssociationState': ?gatewayAssociationState,
      'preSharedKeyArn': ?preSharedKeyArn,
      'region': ?region,
      'routes': ?(() { final guardedValue = routes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpnConnectionRoute, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'state': ?state,
      'tags': ?tags,
      'transitGatewayId': ?transitGatewayId,
      'type': ?type,
      'vgwTelemetries': ?(() { final guardedValue = vgwTelemetries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpnConnectionVgwTelemetry, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'vpnConcentratorId': ?vpnConcentratorId,
      'vpnConnectionId': ?vpnConnectionId,
      'vpnGatewayId': ?vpnGatewayId,
    };
  }

  factory GetVpnConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetVpnConnectionResult(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return guardedValue as String; })(),
      coreNetworkArn: (() { final guardedValue = map['coreNetworkArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      coreNetworkAttachmentArn: (() { final guardedValue = map['coreNetworkAttachmentArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerGatewayConfiguration: (() { final guardedValue = map['customerGatewayConfiguration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerGatewayId: (() { final guardedValue = map['customerGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpnConnectionFilter>(guardedValue, (value) => GetVpnConnectionFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      gatewayAssociationState: (() { final guardedValue = map['gatewayAssociationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preSharedKeyArn: (() { final guardedValue = map['preSharedKeyArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpnConnectionRoute>(guardedValue, (value) => GetVpnConnectionRoute.fromMap((value as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      transitGatewayId: (() { final guardedValue = map['transitGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vgwTelemetries: (() { final guardedValue = map['vgwTelemetries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpnConnectionVgwTelemetry>(guardedValue, (value) => GetVpnConnectionVgwTelemetry.fromMap((value as Map).cast<String, dynamic>())); })(),
      vpnConcentratorId: (() { final guardedValue = map['vpnConcentratorId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpnConnectionId: (() { final guardedValue = map['vpnConnectionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpnGatewayId: (() { final guardedValue = map['vpnGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
