// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connected_subnet_response.dart';
import 'export_route_policy_response.dart';
import 'import_route_policy_response.dart';
import 'internal_network_properties_response_bgp_configuration.dart';
import 'internal_network_properties_response_static_route_configuration.dart';
import 'system_data_response.dart';

/// Result data returned by getInternalNetwork.
class GetInternalNetworkResult {
  /// Administrative state of the resource.
  final String administrativeState;
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// BGP configuration properties.
  final InternalNetworkPropertiesResponseBgpConfiguration? bgpConfiguration;
  /// Configuration state of the resource.
  final String configurationState;
  /// List of Connected IPv4 Subnets.
  final List<ConnectedSubnetResponse>? connectedIPv4Subnets;
  /// List of connected IPv6 Subnets.
  final List<ConnectedSubnetResponse>? connectedIPv6Subnets;
  /// Egress Acl. ARM resource ID of Access Control Lists.
  final String? egressAclId;
  /// Export Route Policy either IPv4 or IPv6.
  final ExportRoutePolicyResponse? exportRoutePolicy;
  /// ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  final String? exportRoutePolicyId;
  /// Extension. Example: NoExtension | NPB.
  final String? extension;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Import Route Policy either IPv4 or IPv6.
  final ImportRoutePolicyResponse? importRoutePolicy;
  /// ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  final String? importRoutePolicyId;
  /// Ingress Acl. ARM resource ID of Access Control Lists.
  final String? ingressAclId;
  /// To check whether monitoring of internal network is enabled or not.
  final String? isMonitoringEnabled;
  /// Maximum transmission unit. Default value is 1500.
  final int? mtu;
  /// The name of the resource
  final String name;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Static Route Configuration properties.
  final InternalNetworkPropertiesResponseStaticRouteConfiguration? staticRouteConfiguration;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Vlan identifier. Example: 1001.
  final int vlanId;

  /// Creates a new [GetInternalNetworkResult].
  /// [administrativeState] Administrative state of the resource.
  /// [annotation] Switch configuration description.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [bgpConfiguration] BGP configuration properties.
  /// [configurationState] Configuration state of the resource.
  /// [connectedIPv4Subnets] List of Connected IPv4 Subnets.
  /// [connectedIPv6Subnets] List of connected IPv6 Subnets.
  /// [egressAclId] Egress Acl. ARM resource ID of Access Control Lists.
  /// [exportRoutePolicy] Export Route Policy either IPv4 or IPv6.
  /// [exportRoutePolicyId] ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  /// [extension] Extension. Example: NoExtension | NPB.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [importRoutePolicy] Import Route Policy either IPv4 or IPv6.
  /// [importRoutePolicyId] ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  /// [ingressAclId] Ingress Acl. ARM resource ID of Access Control Lists.
  /// [isMonitoringEnabled] To check whether monitoring of internal network is enabled or not.
  /// [mtu] Maximum transmission unit. Default value is 1500.
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the resource.
  /// [staticRouteConfiguration] Static Route Configuration properties.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vlanId] Vlan identifier. Example: 1001.
  const GetInternalNetworkResult({
    required this.administrativeState,
    this.annotation,
    required this.azureApiVersion,
    this.bgpConfiguration,
    required this.configurationState,
    this.connectedIPv4Subnets,
    this.connectedIPv6Subnets,
    this.egressAclId,
    this.exportRoutePolicy,
    this.exportRoutePolicyId,
    this.extension,
    required this.id,
    this.importRoutePolicy,
    this.importRoutePolicyId,
    this.ingressAclId,
    this.isMonitoringEnabled,
    this.mtu,
    required this.name,
    required this.provisioningState,
    this.staticRouteConfiguration,
    required this.systemData,
    required this.type,
    required this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': administrativeState,
      'annotation': ?annotation,
      'azureApiVersion': azureApiVersion,
      'bgpConfiguration': ?bgpConfiguration?.toMap(),
      'configurationState': configurationState,
      'connectedIPv4Subnets': ?(() { final guardedValue = connectedIPv4Subnets; if (guardedValue == null) return null; return pulumi.Input.encodeList<ConnectedSubnetResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'connectedIPv6Subnets': ?(() { final guardedValue = connectedIPv6Subnets; if (guardedValue == null) return null; return pulumi.Input.encodeList<ConnectedSubnetResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'egressAclId': ?egressAclId,
      'exportRoutePolicy': ?exportRoutePolicy?.toMap(),
      'exportRoutePolicyId': ?exportRoutePolicyId,
      'extension': ?extension,
      'id': id,
      'importRoutePolicy': ?importRoutePolicy?.toMap(),
      'importRoutePolicyId': ?importRoutePolicyId,
      'ingressAclId': ?ingressAclId,
      'isMonitoringEnabled': ?isMonitoringEnabled,
      'mtu': ?mtu,
      'name': name,
      'provisioningState': provisioningState,
      'staticRouteConfiguration': ?staticRouteConfiguration?.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
      'vlanId': vlanId,
    };
  }

  factory GetInternalNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetInternalNetworkResult(
      administrativeState: map['administrativeState'] as String,
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      bgpConfiguration: (() { final guardedValue = map['bgpConfiguration']; if (guardedValue == null) return null; return InternalNetworkPropertiesResponseBgpConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      configurationState: map['configurationState'] as String,
      connectedIPv4Subnets: (() { final guardedValue = map['connectedIPv4Subnets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConnectedSubnetResponse>(guardedValue, (value) => ConnectedSubnetResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      connectedIPv6Subnets: (() { final guardedValue = map['connectedIPv6Subnets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConnectedSubnetResponse>(guardedValue, (value) => ConnectedSubnetResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      egressAclId: (() { final guardedValue = map['egressAclId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      exportRoutePolicy: (() { final guardedValue = map['exportRoutePolicy']; if (guardedValue == null) return null; return ExportRoutePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      exportRoutePolicyId: (() { final guardedValue = map['exportRoutePolicyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extension: (() { final guardedValue = map['extension']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      importRoutePolicy: (() { final guardedValue = map['importRoutePolicy']; if (guardedValue == null) return null; return ImportRoutePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      importRoutePolicyId: (() { final guardedValue = map['importRoutePolicyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ingressAclId: (() { final guardedValue = map['ingressAclId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isMonitoringEnabled: (() { final guardedValue = map['isMonitoringEnabled']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return guardedValue as int; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      staticRouteConfiguration: (() { final guardedValue = map['staticRouteConfiguration']; if (guardedValue == null) return null; return InternalNetworkPropertiesResponseStaticRouteConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      vlanId: map['vlanId'] as int,
    );
  }
}

