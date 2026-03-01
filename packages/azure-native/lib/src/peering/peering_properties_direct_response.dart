// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'direct_connection_response.dart';
import 'sub_resource_response.dart';

/// The properties that define a direct peering.
class PeeringPropertiesDirectResponse {
  /// The set of connections that constitute a direct peering.
  final List<DirectConnectionResponse>? connections;
  /// The type of direct peering.
  final String? directPeeringType;
  /// The reference of the peer ASN.
  final SubResourceResponse? peerAsn;
  /// The flag that indicates whether or not the peering is used for peering service.
  final bool useForPeeringService;

  /// Creates a new [PeeringPropertiesDirectResponse].
  /// [connections] The set of connections that constitute a direct peering.
  /// [directPeeringType] The type of direct peering.
  /// [peerAsn] The reference of the peer ASN.
  /// [useForPeeringService] The flag that indicates whether or not the peering is used for peering service.
  PeeringPropertiesDirectResponse({
    this.connections,
    this.directPeeringType,
    this.peerAsn,
    required this.useForPeeringService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections': ?connections == null ? null : pulumi.Input.encodeList<DirectConnectionResponse, Map<String, dynamic>>(connections!, (value) => value.toMap()),
      'directPeeringType': ?directPeeringType,
      'peerAsn': ?peerAsn == null ? null : peerAsn!.toMap(),
      'useForPeeringService': useForPeeringService,
    };
  }

  factory PeeringPropertiesDirectResponse.fromMap(Map<String, dynamic> map) {
    return PeeringPropertiesDirectResponse(
      connections: map['connections'] == null ? null : pulumi.Input.decodeList<DirectConnectionResponse>(map['connections'], (value) => DirectConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      directPeeringType: map['directPeeringType'] == null ? null : map['directPeeringType'] as String,
      peerAsn: map['peerAsn'] == null ? null : SubResourceResponse.fromMap((map['peerAsn'] as Map).cast<String, dynamic>()),
      useForPeeringService: map['useForPeeringService'] as bool,
    );
  }
}

