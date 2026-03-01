// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_connection_filter.dart';
import 'get_vpn_connection_route.dart';
import 'get_vpn_connection_vgw_telemetry.dart';

/// Result data returned by getVpnConnection.
class GetVpnConnectionResult {
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
  final List<GetVpnConnectionFilter>? filters;

  /// Current state of the gateway association.
  final String gatewayAssociationState;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// (ARN) of the Secrets Manager secret storing the pre-shared key(s) for the VPN connection.
  final String preSharedKeyArn;
  final String region;

  /// List of static routes associated with the VPN connection.
  final List<GetVpnConnectionRoute> routes;

  /// Current state of the VPN connection.
  final String state;

  /// Tags associated to the VPN Connection.
  final Map<String, String> tags;

  /// ID of a transit gateway associated with the VPN connection.
  final String transitGatewayId;

  /// Type of VPN connection. Currently the only supported type is ipsec.1.
  final String type;

  /// List of objects containing information about the VPN tunnel.
  final List<GetVpnConnectionVgwTelemetry> vgwTelemetries;

  /// ID of a VPN concentrator associated with the VPN connection.
  final String vpnConcentratorId;
  final String vpnConnectionId;

  /// ID of a virtual private gateway associated with the VPN connection.
  final String vpnGatewayId;

  /// Creates a new [GetVpnConnectionResult].
  /// [category] Category of the VPN connection. A value of VPN indicates an AWS VPN connection. A value of VPN-Classic indicates an AWS Classic VPN connection.
  /// [coreNetworkArn] ARN of the core network.
  /// [coreNetworkAttachmentArn] ARN of the core network attachment.
  /// [customerGatewayConfiguration] Configuration information for the VPN connection's customer gateway (in the native XML format).
  /// [customerGatewayId] ID of the customer gateway at your end of the VPN connection.
  /// [filters] Optional.
  /// [gatewayAssociationState] Current state of the gateway association.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [preSharedKeyArn] (ARN) of the Secrets Manager secret storing the pre-shared key(s) for the VPN connection.
  /// [region] Required.
  /// [routes] List of static routes associated with the VPN connection.
  /// [state] Current state of the VPN connection.
  /// [tags] Tags associated to the VPN Connection.
  /// [transitGatewayId] ID of a transit gateway associated with the VPN connection.
  /// [type] Type of VPN connection. Currently the only supported type is ipsec.1.
  /// [vgwTelemetries] List of objects containing information about the VPN tunnel.
  /// [vpnConcentratorId] ID of a VPN concentrator associated with the VPN connection.
  /// [vpnConnectionId] Required.
  /// [vpnGatewayId] ID of a virtual private gateway associated with the VPN connection.
  GetVpnConnectionResult({
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
    return <String, dynamic>{
      'category': category,
      'coreNetworkArn': coreNetworkArn,
      'coreNetworkAttachmentArn': coreNetworkAttachmentArn,
      'customerGatewayConfiguration': customerGatewayConfiguration,
      'customerGatewayId': customerGatewayId,
      'filters': ?filters == null
          ? null
          : pulumi.Input.encodeList<
              GetVpnConnectionFilter,
              Map<String, dynamic>
            >(filters!, (value) => value.toMap()),
      'gatewayAssociationState': gatewayAssociationState,
      'id': id,
      'preSharedKeyArn': preSharedKeyArn,
      'region': region,
      'routes':
          pulumi.Input.encodeList<GetVpnConnectionRoute, Map<String, dynamic>>(
            routes,
            (value) => value.toMap(),
          ),
      'state': state,
      'tags': tags,
      'transitGatewayId': transitGatewayId,
      'type': type,
      'vgwTelemetries':
          pulumi.Input.encodeList<
            GetVpnConnectionVgwTelemetry,
            Map<String, dynamic>
          >(vgwTelemetries, (value) => value.toMap()),
      'vpnConcentratorId': vpnConcentratorId,
      'vpnConnectionId': vpnConnectionId,
      'vpnGatewayId': vpnGatewayId,
    };
  }

  factory GetVpnConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetVpnConnectionResult(
      category: map['category'] as String,
      coreNetworkArn: map['coreNetworkArn'] as String,
      coreNetworkAttachmentArn: map['coreNetworkAttachmentArn'] as String,
      customerGatewayConfiguration:
          map['customerGatewayConfiguration'] as String,
      customerGatewayId: map['customerGatewayId'] as String,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetVpnConnectionFilter>(
              map['filters'],
              (value) => GetVpnConnectionFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      gatewayAssociationState: map['gatewayAssociationState'] as String,
      id: map['id'] as String,
      preSharedKeyArn: map['preSharedKeyArn'] as String,
      region: map['region'] as String,
      routes: pulumi.Input.decodeList<GetVpnConnectionRoute>(
        map['routes'],
        (value) => GetVpnConnectionRoute.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      transitGatewayId: map['transitGatewayId'] as String,
      type: map['type'] as String,
      vgwTelemetries: pulumi.Input.decodeList<GetVpnConnectionVgwTelemetry>(
        map['vgwTelemetries'],
        (value) => GetVpnConnectionVgwTelemetry.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      vpnConcentratorId: map['vpnConcentratorId'] as String,
      vpnConnectionId: map['vpnConnectionId'] as String,
      vpnGatewayId: map['vpnGatewayId'] as String,
    );
  }
}
