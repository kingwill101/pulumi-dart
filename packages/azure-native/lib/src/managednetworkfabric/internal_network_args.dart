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
    String? annotation,
    InternalNetworkPropertiesBgpConfiguration? bgpConfiguration,
    List<ConnectedSubnet>? connectedIPv4Subnets,
    List<ConnectedSubnet>? connectedIPv6Subnets,
    String? egressAclId,
    ExportRoutePolicy? exportRoutePolicy,
    String? exportRoutePolicyId,
    String? extension,
    ImportRoutePolicy? importRoutePolicy,
    String? importRoutePolicyId,
    String? ingressAclId,
    String? internalNetworkName,
    String? isMonitoringEnabled,
    required String l3IsolationDomainName,
    int? mtu,
    required String resourceGroupName,
    InternalNetworkPropertiesStaticRouteConfiguration? staticRouteConfiguration,
    required int vlanId,
  }) :
      annotation = pulumi.Input.asOptionalInput<String>(annotation),
      bgpConfiguration = pulumi.Input.asOptionalInput<InternalNetworkPropertiesBgpConfiguration>(bgpConfiguration),
      connectedIPv4Subnets = pulumi.Input.asOptionalInput<List<ConnectedSubnet>>(connectedIPv4Subnets),
      connectedIPv6Subnets = pulumi.Input.asOptionalInput<List<ConnectedSubnet>>(connectedIPv6Subnets),
      egressAclId = pulumi.Input.asOptionalInput<String>(egressAclId),
      exportRoutePolicy = pulumi.Input.asOptionalInput<ExportRoutePolicy>(exportRoutePolicy),
      exportRoutePolicyId = pulumi.Input.asOptionalInput<String>(exportRoutePolicyId),
      extension = pulumi.Input.asOptionalInput<String>(extension),
      importRoutePolicy = pulumi.Input.asOptionalInput<ImportRoutePolicy>(importRoutePolicy),
      importRoutePolicyId = pulumi.Input.asOptionalInput<String>(importRoutePolicyId),
      ingressAclId = pulumi.Input.asOptionalInput<String>(ingressAclId),
      internalNetworkName = pulumi.Input.asOptionalInput<String>(internalNetworkName),
      isMonitoringEnabled = pulumi.Input.asOptionalInput<String>(isMonitoringEnabled),
      l3IsolationDomainName = pulumi.Input.asInput<String>(l3IsolationDomainName),
      mtu = pulumi.Input.asOptionalInput<int>(mtu),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      staticRouteConfiguration = pulumi.Input.asOptionalInput<InternalNetworkPropertiesStaticRouteConfiguration>(staticRouteConfiguration),
      vlanId = pulumi.Input.asInput<int>(vlanId);

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
      annotation: map['annotation'] == null ? null : map['annotation'] as String,
      bgpConfiguration: map['bgpConfiguration'] == null ? null : InternalNetworkPropertiesBgpConfiguration.fromMap((map['bgpConfiguration'] as Map).cast<String, dynamic>()),
      connectedIPv4Subnets: map['connectedIPv4Subnets'] == null ? null : pulumi.Input.decodeList<ConnectedSubnet>(map['connectedIPv4Subnets'], (value) => ConnectedSubnet.fromMap((value as Map).cast<String, dynamic>())),
      connectedIPv6Subnets: map['connectedIPv6Subnets'] == null ? null : pulumi.Input.decodeList<ConnectedSubnet>(map['connectedIPv6Subnets'], (value) => ConnectedSubnet.fromMap((value as Map).cast<String, dynamic>())),
      egressAclId: map['egressAclId'] == null ? null : map['egressAclId'] as String,
      exportRoutePolicy: map['exportRoutePolicy'] == null ? null : ExportRoutePolicy.fromMap((map['exportRoutePolicy'] as Map).cast<String, dynamic>()),
      exportRoutePolicyId: map['exportRoutePolicyId'] == null ? null : map['exportRoutePolicyId'] as String,
      extension: map['extension'] == null ? null : map['extension'] as String,
      importRoutePolicy: map['importRoutePolicy'] == null ? null : ImportRoutePolicy.fromMap((map['importRoutePolicy'] as Map).cast<String, dynamic>()),
      importRoutePolicyId: map['importRoutePolicyId'] == null ? null : map['importRoutePolicyId'] as String,
      ingressAclId: map['ingressAclId'] == null ? null : map['ingressAclId'] as String,
      internalNetworkName: map['internalNetworkName'] == null ? null : map['internalNetworkName'] as String,
      isMonitoringEnabled: map['isMonitoringEnabled'] == null ? null : map['isMonitoringEnabled'] as String,
      l3IsolationDomainName: map['l3IsolationDomainName'] as String,
      mtu: map['mtu'] == null ? null : map['mtu'] as int,
      resourceGroupName: map['resourceGroupName'] as String,
      staticRouteConfiguration: map['staticRouteConfiguration'] == null ? null : InternalNetworkPropertiesStaticRouteConfiguration.fromMap((map['staticRouteConfiguration'] as Map).cast<String, dynamic>()),
      vlanId: map['vlanId'] as int,
    );
  }
}

