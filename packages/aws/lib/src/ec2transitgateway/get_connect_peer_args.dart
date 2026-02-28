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
    List<GetConnectPeerFilter>? filters,
    String? region,
    Map<String, String>? tags,
    String? transitGatewayConnectPeerId,
  })  : filters =
            pulumi.Input.asOptionalInput<List<GetConnectPeerFilter>>(filters),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        transitGatewayConnectPeerId =
            pulumi.Input.asOptionalInput<String>(transitGatewayConnectPeerId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetConnectPeerFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetConnectPeerFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final transitGatewayConnectPeerIdValue = transitGatewayConnectPeerId;
    if (transitGatewayConnectPeerIdValue != null) {
      map['transitGatewayConnectPeerId'] = transitGatewayConnectPeerIdValue;
    }
    return map;
  }

  factory GetConnectPeerArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectPeerArgs(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetConnectPeerFilter>(
              map['filters'],
              (value) => GetConnectPeerFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      transitGatewayConnectPeerId: map['transitGatewayConnectPeerId'] == null
          ? null
          : map['transitGatewayConnectPeerId'] as String,
    );
  }
}
