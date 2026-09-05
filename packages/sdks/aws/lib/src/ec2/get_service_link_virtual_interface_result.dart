// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_link_virtual_interface_filter.dart';

/// Result data returned by getServiceLinkVirtualInterface.
class GetServiceLinkVirtualInterfaceResult {
  /// ARN of the Service Link Virtual Interface.
  final String? arn;
  /// Current state of the Service Link Virtual Interface.
  final String? configurationState;
  final List<GetServiceLinkVirtualInterfaceFilter>? filters;
  final String? id;
  /// IPv4 address assigned to the local gateway virtual interface on the Outpost side.
  final String? localAddress;
  /// Outpost ARN for the Service Link Virtual Interface.
  final String? outpostArn;
  /// Outpost ID for the Service Link Virtual Interface.
  final String? outpostId;
  /// Link aggregation group (LAG) ID for the Service Link Virtual Interface.
  final String? outpostLagId;
  /// ID of the AWS account that owns the Service Link Virtual Interface.
  final String? ownerId;
  /// IPv4 peer address for the Service Link Virtual Interface.
  final String? peerAddress;
  /// BGP Autonomous System Number (ASN) of the peer.
  final int? peerBgpAsn;
  final String? region;
  /// Key-value map of resource tags.
  final Map<String, String>? tags;
  /// Virtual Local Area Network.
  final int? vlan;

  /// Creates a new [GetServiceLinkVirtualInterfaceResult].
  /// [arn] ARN of the Service Link Virtual Interface.
  /// [configurationState] Current state of the Service Link Virtual Interface.
  /// [filters] Optional.
  /// [id] Optional.
  /// [localAddress] IPv4 address assigned to the local gateway virtual interface on the Outpost side.
  /// [outpostArn] Outpost ARN for the Service Link Virtual Interface.
  /// [outpostId] Outpost ID for the Service Link Virtual Interface.
  /// [outpostLagId] Link aggregation group (LAG) ID for the Service Link Virtual Interface.
  /// [ownerId] ID of the AWS account that owns the Service Link Virtual Interface.
  /// [peerAddress] IPv4 peer address for the Service Link Virtual Interface.
  /// [peerBgpAsn] BGP Autonomous System Number (ASN) of the peer.
  /// [region] Optional.
  /// [tags] Key-value map of resource tags.
  /// [vlan] Virtual Local Area Network.
  const GetServiceLinkVirtualInterfaceResult({
    this.arn,
    this.configurationState,
    this.filters,
    this.id,
    this.localAddress,
    this.outpostArn,
    this.outpostId,
    this.outpostLagId,
    this.ownerId,
    this.peerAddress,
    this.peerBgpAsn,
    this.region,
    this.tags,
    this.vlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'configurationState': ?configurationState,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceLinkVirtualInterfaceFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'localAddress': ?localAddress,
      'outpostArn': ?outpostArn,
      'outpostId': ?outpostId,
      'outpostLagId': ?outpostLagId,
      'ownerId': ?ownerId,
      'peerAddress': ?peerAddress,
      'peerBgpAsn': ?peerBgpAsn,
      'region': ?region,
      'tags': ?tags,
      'vlan': ?vlan,
    };
  }

  factory GetServiceLinkVirtualInterfaceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceLinkVirtualInterfaceResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurationState: (() { final guardedValue = map['configurationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceLinkVirtualInterfaceFilter>(guardedValue, (value) => GetServiceLinkVirtualInterfaceFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localAddress: (() { final guardedValue = map['localAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outpostId: (() { final guardedValue = map['outpostId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outpostLagId: (() { final guardedValue = map['outpostLagId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerAddress: (() { final guardedValue = map['peerAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerBgpAsn: (() { final guardedValue = map['peerBgpAsn']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vlan: (() { final guardedValue = map['vlan']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
