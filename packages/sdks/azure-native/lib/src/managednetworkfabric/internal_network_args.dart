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
  final pulumi.Input<InternalNetworkPropertiesBgpConfiguration>?
  bgpConfiguration;

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
  final pulumi.Input<InternalNetworkPropertiesStaticRouteConfiguration>?
  staticRouteConfiguration;

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
      'bgpConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            InternalNetworkPropertiesBgpConfiguration,
            Map<String, dynamic>
          >(bgpConfiguration, (value) => value.toMap()),
      'connectedIPv4Subnets':
          ?pulumi.Input.mapOptionalInputValue<
            List<ConnectedSubnet>,
            List<Map<String, dynamic>>
          >(
            connectedIPv4Subnets,
            (value) =>
                pulumi.Input.encodeList<ConnectedSubnet, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'connectedIPv6Subnets':
          ?pulumi.Input.mapOptionalInputValue<
            List<ConnectedSubnet>,
            List<Map<String, dynamic>>
          >(
            connectedIPv6Subnets,
            (value) =>
                pulumi.Input.encodeList<ConnectedSubnet, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'egressAclId': ?egressAclId,
      'exportRoutePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ExportRoutePolicy,
            Map<String, dynamic>
          >(exportRoutePolicy, (value) => value.toMap()),
      'exportRoutePolicyId': ?exportRoutePolicyId,
      'extension': ?extension,
      'importRoutePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ImportRoutePolicy,
            Map<String, dynamic>
          >(importRoutePolicy, (value) => value.toMap()),
      'importRoutePolicyId': ?importRoutePolicyId,
      'ingressAclId': ?ingressAclId,
      'internalNetworkName': ?internalNetworkName,
      'isMonitoringEnabled': ?isMonitoringEnabled,
      'l3IsolationDomainName': l3IsolationDomainName,
      'mtu': ?mtu,
      'resourceGroupName': resourceGroupName,
      'staticRouteConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            InternalNetworkPropertiesStaticRouteConfiguration,
            Map<String, dynamic>
          >(staticRouteConfiguration, (value) => value.toMap()),
      'vlanId': vlanId,
    };
  }

  factory InternalNetworkArgs.fromMap(Map<String, dynamic> map) {
    return InternalNetworkArgs(
      annotation: (() {
        final guardedValue = map['annotation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bgpConfiguration: (() {
        final guardedValue = map['bgpConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InternalNetworkPropertiesBgpConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      connectedIPv4Subnets: (() {
        final guardedValue = map['connectedIPv4Subnets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ConnectedSubnet>(
            guardedValue,
            (value) =>
                ConnectedSubnet.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      connectedIPv6Subnets: (() {
        final guardedValue = map['connectedIPv6Subnets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ConnectedSubnet>(
            guardedValue,
            (value) =>
                ConnectedSubnet.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      egressAclId: (() {
        final guardedValue = map['egressAclId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      exportRoutePolicy: (() {
        final guardedValue = map['exportRoutePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExportRoutePolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      exportRoutePolicyId: (() {
        final guardedValue = map['exportRoutePolicyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      extension: (() {
        final guardedValue = map['extension'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      importRoutePolicy: (() {
        final guardedValue = map['importRoutePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ImportRoutePolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      importRoutePolicyId: (() {
        final guardedValue = map['importRoutePolicyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ingressAclId: (() {
        final guardedValue = map['ingressAclId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      internalNetworkName: (() {
        final guardedValue = map['internalNetworkName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isMonitoringEnabled: (() {
        final guardedValue = map['isMonitoringEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      l3IsolationDomainName: pulumi.Input.fromValue(
        map['l3IsolationDomainName'] as String,
      ),
      mtu: (() {
        final guardedValue = map['mtu'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      staticRouteConfiguration: (() {
        final guardedValue = map['staticRouteConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InternalNetworkPropertiesStaticRouteConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vlanId: pulumi.Input.fromValue(map['vlanId'] as int),
    );
  }
}
