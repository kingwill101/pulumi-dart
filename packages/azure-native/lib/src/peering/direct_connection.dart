// ignore_for_file: unused_element, unnecessary_cast

import 'bgp_session.dart';

/// The properties that define a direct connection.
class DirectConnection {
  /// The bandwidth of the connection.
  final int? bandwidthInMbps;
  /// The BGP session associated with the connection.
  final BgpSession? bgpSession;
  /// The unique identifier (GUID) for the connection.
  final String? connectionIdentifier;
  /// The PeeringDB.com ID of the facility at which the connection has to be set up.
  final int? peeringDBFacilityId;
  /// The field indicating if Microsoft provides session ip addresses.
  final String? sessionAddressProvider;
  /// The flag that indicates whether or not the connection is used for peering service.
  final bool? useForPeeringService;

  /// Creates a new [DirectConnection].
  /// [bandwidthInMbps] The bandwidth of the connection.
  /// [bgpSession] The BGP session associated with the connection.
  /// [connectionIdentifier] The unique identifier (GUID) for the connection.
  /// [peeringDBFacilityId] The PeeringDB.com ID of the facility at which the connection has to be set up.
  /// [sessionAddressProvider] The field indicating if Microsoft provides session ip addresses.
  /// [useForPeeringService] The flag that indicates whether or not the connection is used for peering service.
  DirectConnection({
    this.bandwidthInMbps,
    this.bgpSession,
    this.connectionIdentifier,
    this.peeringDBFacilityId,
    this.sessionAddressProvider,
    this.useForPeeringService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthInMbps': ?bandwidthInMbps,
      'bgpSession': ?bgpSession == null ? null : bgpSession!.toMap(),
      'connectionIdentifier': ?connectionIdentifier,
      'peeringDBFacilityId': ?peeringDBFacilityId,
      'sessionAddressProvider': ?sessionAddressProvider,
      'useForPeeringService': ?useForPeeringService,
    };
  }

  factory DirectConnection.fromMap(Map<String, dynamic> map) {
    return DirectConnection(
      bandwidthInMbps: map['bandwidthInMbps'] == null ? null : map['bandwidthInMbps'] as int,
      bgpSession: map['bgpSession'] == null ? null : BgpSession.fromMap((map['bgpSession'] as Map).cast<String, dynamic>()),
      connectionIdentifier: map['connectionIdentifier'] == null ? null : map['connectionIdentifier'] as String,
      peeringDBFacilityId: map['peeringDBFacilityId'] == null ? null : map['peeringDBFacilityId'] as int,
      sessionAddressProvider: map['sessionAddressProvider'] == null ? null : map['sessionAddressProvider'] as String,
      useForPeeringService: map['useForPeeringService'] == null ? null : map['useForPeeringService'] as bool,
    );
  }
}

