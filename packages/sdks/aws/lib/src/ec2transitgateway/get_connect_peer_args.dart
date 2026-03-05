// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connect_peer_filter.dart';

/// {@template pulumi_ec2transitgateway_get_connect_peer_get_connect_peer_args_doc}
/// Arguments for getConnectPeer.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_get_connect_peer_get_connect_peer_args_doc}
class GetConnectPeerArgs {
  /// One or more configuration blocks containing name-values filters. Detailed below.
  final pulumi.Input<List<GetConnectPeerFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value tags for the EC2 Transit Gateway Connect Peer
  final pulumi.Input<Map<String, String>>? tags;
  /// Identifier of the EC2 Transit Gateway Connect Peer.
  final pulumi.Input<String>? transitGatewayConnectPeerId;

  /// Creates a new [GetConnectPeerArgs].
  /// [filters] One or more configuration blocks containing name-values filters. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the EC2 Transit Gateway Connect Peer
  /// [transitGatewayConnectPeerId] Identifier of the EC2 Transit Gateway Connect Peer.
  GetConnectPeerArgs({
    this.filters,
    this.region,
    this.tags,
    this.transitGatewayConnectPeerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetConnectPeerFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetConnectPeerFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'transitGatewayConnectPeerId': ?transitGatewayConnectPeerId,
    };
  }

  factory GetConnectPeerArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectPeerArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetConnectPeerFilter>(guardedValue, (value) => GetConnectPeerFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitGatewayConnectPeerId: (() { final guardedValue = map['transitGatewayConnectPeerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

