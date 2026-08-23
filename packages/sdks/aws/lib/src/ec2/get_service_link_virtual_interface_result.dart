// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_link_virtual_interface_filter.dart';

/// Result data returned by getServiceLinkVirtualInterface.
class GetServiceLinkVirtualInterfaceResult {
  /// ARN of the Service Link Virtual Interface.
  final String arn;
  /// Current state of the Service Link Virtual Interface.
  final String configurationState;
  final List<GetServiceLinkVirtualInterfaceFilter>? filters;
  final String id;
  /// IPv4 address assigned to the local gateway virtual interface on the Outpost side.
  final String localAddress;
  /// Outpost ARN for the Service Link Virtual Interface.
  final String outpostArn;
  /// Outpost ID for the Service Link Virtual Interface.
  final String outpostId;
  /// Link aggregation group (LAG) ID for the Service Link Virtual Interface.
  final String outpostLagId;
  /// ID of the AWS account that owns the Service Link Virtual Interface.
  final String ownerId;
  /// IPv4 peer address for the Service Link Virtual Interface.
  final String peerAddress;
  /// BGP Autonomous System Number (ASN) of the peer.
  final int peerBgpAsn;
  final String region;
  /// Key-value map of resource tags.
  final Map<String, String> tags;
  /// Virtual Local Area Network.
  final int vlan;

  /// Creates a new [GetServiceLinkVirtualInterfaceResult].
  /// [arn] ARN of the Service Link Virtual Interface.
  /// [configurationState] Current state of the Service Link Virtual Interface.
  /// [filters] Optional.
  /// [id] Required.
  /// [localAddress] IPv4 address assigned to the local gateway virtual interface on the Outpost side.
  /// [outpostArn] Outpost ARN for the Service Link Virtual Interface.
  /// [outpostId] Outpost ID for the Service Link Virtual Interface.
  /// [outpostLagId] Link aggregation group (LAG) ID for the Service Link Virtual Interface.
  /// [ownerId] ID of the AWS account that owns the Service Link Virtual Interface.
  /// [peerAddress] IPv4 peer address for the Service Link Virtual Interface.
  /// [peerBgpAsn] BGP Autonomous System Number (ASN) of the peer.
  /// [region] Required.
  /// [tags] Key-value map of resource tags.
  /// [vlan] Virtual Local Area Network.
  const GetServiceLinkVirtualInterfaceResult({
    required this.arn,
    required this.configurationState,
    this.filters,
    required this.id,
    required this.localAddress,
    required this.outpostArn,
    required this.outpostId,
    required this.outpostLagId,
    required this.ownerId,
    required this.peerAddress,
    required this.peerBgpAsn,
    required this.region,
    required this.tags,
    required this.vlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'configurationState': configurationState,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceLinkVirtualInterfaceFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'localAddress': localAddress,
      'outpostArn': outpostArn,
      'outpostId': outpostId,
      'outpostLagId': outpostLagId,
      'ownerId': ownerId,
      'peerAddress': peerAddress,
      'peerBgpAsn': peerBgpAsn,
      'region': region,
      'tags': tags,
      'vlan': vlan,
    };
  }

  factory GetServiceLinkVirtualInterfaceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceLinkVirtualInterfaceResult(
      arn: map['arn'] as String,
      configurationState: map['configurationState'] as String,
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceLinkVirtualInterfaceFilter>(guardedValue, (value) => GetServiceLinkVirtualInterfaceFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      localAddress: map['localAddress'] as String,
      outpostArn: map['outpostArn'] as String,
      outpostId: map['outpostId'] as String,
      outpostLagId: map['outpostLagId'] as String,
      ownerId: map['ownerId'] as String,
      peerAddress: map['peerAddress'] as String,
      peerBgpAsn: map['peerBgpAsn'] as int,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vlan: map['vlan'] as int,
    );
  }
}
