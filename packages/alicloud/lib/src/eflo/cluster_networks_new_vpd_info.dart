// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_networks_new_vpd_info_vpd_subnet.dart';

class ClusterNetworksNewVpdInfo {
  /// Cloud Enterprise Network ID
  final String? cenId;
  /// Cloud chain cidr
  final String? cloudLinkCidr;
  /// Cloud chain ID
  final String? cloudLinkId;
  /// Proprietary Network
  final String? monitorVpcId;
  /// Proprietary network switch
  final String? monitorVswitchId;
  /// Cluster network segment
  final String? vpdCidr;
  /// List of cluster subnet ID
  final List<ClusterNetworksNewVpdInfoVpdSubnet>? vpdSubnets;

  /// Creates a new [ClusterNetworksNewVpdInfo].
  /// [cenId] Cloud Enterprise Network ID
  /// [cloudLinkCidr] Cloud chain cidr
  /// [cloudLinkId] Cloud chain ID
  /// [monitorVpcId] Proprietary Network
  /// [monitorVswitchId] Proprietary network switch
  /// [vpdCidr] Cluster network segment
  /// [vpdSubnets] List of cluster subnet ID
  ClusterNetworksNewVpdInfo({
    this.cenId,
    this.cloudLinkCidr,
    this.cloudLinkId,
    this.monitorVpcId,
    this.monitorVswitchId,
    this.vpdCidr,
    this.vpdSubnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': ?cenId,
      'cloudLinkCidr': ?cloudLinkCidr,
      'cloudLinkId': ?cloudLinkId,
      'monitorVpcId': ?monitorVpcId,
      'monitorVswitchId': ?monitorVswitchId,
      'vpdCidr': ?vpdCidr,
      'vpdSubnets': ?vpdSubnets == null ? null : pulumi.Input.encodeList<ClusterNetworksNewVpdInfoVpdSubnet, Map<String, dynamic>>(vpdSubnets!, (value) => value.toMap()),
    };
  }

  factory ClusterNetworksNewVpdInfo.fromMap(Map<String, dynamic> map) {
    return ClusterNetworksNewVpdInfo(
      cenId: map['cenId'] == null ? null : map['cenId'] as String,
      cloudLinkCidr: map['cloudLinkCidr'] == null ? null : map['cloudLinkCidr'] as String,
      cloudLinkId: map['cloudLinkId'] == null ? null : map['cloudLinkId'] as String,
      monitorVpcId: map['monitorVpcId'] == null ? null : map['monitorVpcId'] as String,
      monitorVswitchId: map['monitorVswitchId'] == null ? null : map['monitorVswitchId'] as String,
      vpdCidr: map['vpdCidr'] == null ? null : map['vpdCidr'] as String,
      vpdSubnets: map['vpdSubnets'] == null ? null : pulumi.Input.decodeList<ClusterNetworksNewVpdInfoVpdSubnet>(map['vpdSubnets'], (value) => ClusterNetworksNewVpdInfoVpdSubnet.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

