// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connected_subnet.dart';
import 'export_route_policy.dart';
import 'import_route_policy.dart';
import 'internal_network_properties_bgp_configuration.dart';
import 'internal_network_properties_static_route_configuration.dart';

/// {@template pulumi_managednetworkfabric_internal_network_args_doc}
/// The set of arguments for InternalNetwork.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_internal_network_args_doc}
class InternalNetworkArgs {
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// BGP configuration properties.
  final pulumi.Input<InternalNetworkPropertiesBgpConfiguration>? bgpConfiguration;
  /// List of Connected IPv4 Subnets.
  final pulumi.Input<List<ConnectedSubnet>>? connectedIPv4Subnets;
  /// List of connected IPv6 Subnets.
  final pulumi.Input<List<ConnectedSubnet>>? connectedIPv6Subnets;
  /// Egress Acl. ARM resource ID of Access Control Lists.
  final pulumi.Input<String>? egressAclId;
  /// Export Route Policy either IPv4 or IPv6.
  final pulumi.Input<ExportRoutePolicy>? exportRoutePolicy;
  /// ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  final pulumi.Input<String>? exportRoutePolicyId;
  /// Extension. Example: NoExtension | NPB.
  final pulumi.Input<String>? extension;
  /// Import Route Policy either IPv4 or IPv6.
  final pulumi.Input<ImportRoutePolicy>? importRoutePolicy;
  /// ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  final pulumi.Input<String>? importRoutePolicyId;
  /// Ingress Acl. ARM resource ID of Access Control Lists.
  final pulumi.Input<String>? ingressAclId;
  /// Name of the Internal Network.
  final pulumi.Input<String>? internalNetworkName;
  /// To check whether monitoring of internal network is enabled or not.
  final pulumi.Input<String>? isMonitoringEnabled;
  /// Name of the L3 Isolation Domain.
  final pulumi.Input<String> l3IsolationDomainName;
  /// Maximum transmission unit. Default value is 1500.
  final pulumi.Input<int>? mtu;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Static Route Configuration properties.
  final pulumi.Input<InternalNetworkPropertiesStaticRouteConfiguration>? staticRouteConfiguration;
  /// Vlan identifier. Example: 1001.
  final pulumi.Input<int> vlanId;

  /// Creates a new [InternalNetworkArgs].
  /// [annotation] Switch configuration description.
  /// [bgpConfiguration] BGP configuration properties.
  /// [connectedIPv4Subnets] List of Connected IPv4 Subnets.
  /// [connectedIPv6Subnets] List of connected IPv6 Subnets.
  /// [egressAclId] Egress Acl. ARM resource ID of Access Control Lists.
  /// [exportRoutePolicy] Export Route Policy either IPv4 or IPv6.
  /// [exportRoutePolicyId] ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  /// [extension] Extension. Example: NoExtension | NPB.
  /// [importRoutePolicy] Import Route Policy either IPv4 or IPv6.
  /// [importRoutePolicyId] ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  /// [ingressAclId] Ingress Acl. ARM resource ID of Access Control Lists.
  /// [internalNetworkName] Name of the Internal Network.
  /// [isMonitoringEnabled] To check whether monitoring of internal network is enabled or not.
  /// [l3IsolationDomainName] Name of the L3 Isolation Domain.
  /// [mtu] Maximum transmission unit. Default value is 1500.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [staticRouteConfiguration] Static Route Configuration properties.
  /// [vlanId] Vlan identifier. Example: 1001.
  InternalNetworkArgs({
    this.annotation,
    this.bgpConfiguration,
    this.connectedIPv4Subnets,
    this.connectedIPv6Subnets,
    this.egressAclId,
    this.exportRoutePolicy,
    this.exportRoutePolicyId,
    this.extension,
    this.importRoutePolicy,
    this.importRoutePolicyId,
    this.ingressAclId,
    this.internalNetworkName,
    this.isMonitoringEnabled,
    required this.l3IsolationDomainName,
    this.mtu,
    required this.resourceGroupName,
    this.staticRouteConfiguration,
    required this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'bgpConfiguration': ?pulumi.Input.mapOptionalInputValue<InternalNetworkPropertiesBgpConfiguration, Map<String, dynamic>>(bgpConfiguration, (value) => value.toMap()),
      'connectedIPv4Subnets': ?pulumi.Input.mapOptionalInputValue<List<ConnectedSubnet>, List<Map<String, dynamic>>>(connectedIPv4Subnets, (value) => pulumi.Input.encodeList<ConnectedSubnet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectedIPv6Subnets': ?pulumi.Input.mapOptionalInputValue<List<ConnectedSubnet>, List<Map<String, dynamic>>>(connectedIPv6Subnets, (value) => pulumi.Input.encodeList<ConnectedSubnet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'egressAclId': ?egressAclId,
      'exportRoutePolicy': ?pulumi.Input.mapOptionalInputValue<ExportRoutePolicy, Map<String, dynamic>>(exportRoutePolicy, (value) => value.toMap()),
      'exportRoutePolicyId': ?exportRoutePolicyId,
      'extension': ?extension,
      'importRoutePolicy': ?pulumi.Input.mapOptionalInputValue<ImportRoutePolicy, Map<String, dynamic>>(importRoutePolicy, (value) => value.toMap()),
      'importRoutePolicyId': ?importRoutePolicyId,
      'ingressAclId': ?ingressAclId,
      'internalNetworkName': ?internalNetworkName,
      'isMonitoringEnabled': ?isMonitoringEnabled,
      'l3IsolationDomainName': l3IsolationDomainName,
      'mtu': ?mtu,
      'resourceGroupName': resourceGroupName,
      'staticRouteConfiguration': ?pulumi.Input.mapOptionalInputValue<InternalNetworkPropertiesStaticRouteConfiguration, Map<String, dynamic>>(staticRouteConfiguration, (value) => value.toMap()),
      'vlanId': vlanId,
    };
  }

  factory InternalNetworkArgs.fromMap(Map<String, dynamic> map) {
    return InternalNetworkArgs(
      annotation: map['annotation'] == null ? null : (map['annotation']! as String).input(),
      bgpConfiguration: map['bgpConfiguration'] == null ? null : (InternalNetworkPropertiesBgpConfiguration.fromMap((map['bgpConfiguration']! as Map).cast<String, dynamic>())).input(),
      connectedIPv4Subnets: map['connectedIPv4Subnets'] == null ? null : (pulumi.Input.decodeList<ConnectedSubnet>(map['connectedIPv4Subnets']!, (value) => ConnectedSubnet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      connectedIPv6Subnets: map['connectedIPv6Subnets'] == null ? null : (pulumi.Input.decodeList<ConnectedSubnet>(map['connectedIPv6Subnets']!, (value) => ConnectedSubnet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      egressAclId: map['egressAclId'] == null ? null : (map['egressAclId']! as String).input(),
      exportRoutePolicy: map['exportRoutePolicy'] == null ? null : (ExportRoutePolicy.fromMap((map['exportRoutePolicy']! as Map).cast<String, dynamic>())).input(),
      exportRoutePolicyId: map['exportRoutePolicyId'] == null ? null : (map['exportRoutePolicyId']! as String).input(),
      extension: map['extension'] == null ? null : (map['extension']! as String).input(),
      importRoutePolicy: map['importRoutePolicy'] == null ? null : (ImportRoutePolicy.fromMap((map['importRoutePolicy']! as Map).cast<String, dynamic>())).input(),
      importRoutePolicyId: map['importRoutePolicyId'] == null ? null : (map['importRoutePolicyId']! as String).input(),
      ingressAclId: map['ingressAclId'] == null ? null : (map['ingressAclId']! as String).input(),
      internalNetworkName: map['internalNetworkName'] == null ? null : (map['internalNetworkName']! as String).input(),
      isMonitoringEnabled: map['isMonitoringEnabled'] == null ? null : (map['isMonitoringEnabled']! as String).input(),
      l3IsolationDomainName: (map['l3IsolationDomainName'] as String).input(),
      mtu: map['mtu'] == null ? null : (map['mtu']! as int).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      staticRouteConfiguration: map['staticRouteConfiguration'] == null ? null : (InternalNetworkPropertiesStaticRouteConfiguration.fromMap((map['staticRouteConfiguration']! as Map).cast<String, dynamic>())).input(),
      vlanId: (map['vlanId'] as int).input(),
    );
  }
}

