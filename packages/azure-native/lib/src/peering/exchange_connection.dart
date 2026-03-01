// ignore_for_file: unused_element, unnecessary_cast

import 'bgp_session.dart';

/// The properties that define an exchange connection.
class ExchangeConnection {
  /// The BGP session associated with the connection.
  final BgpSession? bgpSession;
  /// The unique identifier (GUID) for the connection.
  final String? connectionIdentifier;
  /// The PeeringDB.com ID of the facility at which the connection has to be set up.
  final int? peeringDBFacilityId;

  /// Creates a new [ExchangeConnection].
  /// [bgpSession] The BGP session associated with the connection.
  /// [connectionIdentifier] The unique identifier (GUID) for the connection.
  /// [peeringDBFacilityId] The PeeringDB.com ID of the facility at which the connection has to be set up.
  ExchangeConnection({
    this.bgpSession,
    this.connectionIdentifier,
    this.peeringDBFacilityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpSession': ?bgpSession == null ? null : bgpSession!.toMap(),
      'connectionIdentifier': ?connectionIdentifier,
      'peeringDBFacilityId': ?peeringDBFacilityId,
    };
  }

  factory ExchangeConnection.fromMap(Map<String, dynamic> map) {
    return ExchangeConnection(
      bgpSession: map['bgpSession'] == null ? null : BgpSession.fromMap((map['bgpSession'] as Map).cast<String, dynamic>()),
      connectionIdentifier: map['connectionIdentifier'] == null ? null : map['connectionIdentifier'] as String,
      peeringDBFacilityId: map['peeringDBFacilityId'] == null ? null : map['peeringDBFacilityId'] as int,
    );
  }
}

