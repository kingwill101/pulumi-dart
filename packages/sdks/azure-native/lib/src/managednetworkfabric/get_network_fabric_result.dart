// ignore_for_file: unused_element, unnecessary_cast

import 'management_network_configuration_properties_response.dart';
import 'system_data_response.dart';
import 'terminal_server_configuration_response.dart';

/// Result data returned by getNetworkFabric.
class GetNetworkFabricResult {
  /// Administrative state of the resource.
  final String? administrativeState;
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Configuration state of the resource.
  final String? configurationState;
  /// ASN of CE devices for CE/PE connectivity.
  final double? fabricASN;
  /// The version of Network Fabric.
  final String? fabricVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// IPv4Prefix for Management Network. Example: 10.1.0.0/19.
  final String? ipv4Prefix;
  /// IPv6Prefix for Management Network. Example: 3FFE:FFFF:0:CD40::/59
  final String? ipv6Prefix;
  /// List of L2 Isolation Domain resource IDs under the Network Fabric.
  final List<String>? l2IsolationDomains;
  /// List of L3 Isolation Domain resource IDs under the Network Fabric.
  final List<String>? l3IsolationDomains;
  /// The geo-location where the resource lives
  final String? location;
  /// Configuration to be used to setup the management network.
  final ManagementNetworkConfigurationPropertiesResponse? managementNetworkConfiguration;
  /// The name of the resource
  final String? name;
  /// Azure resource ID for the NetworkFabricController the NetworkFabric belongs.
  final String? networkFabricControllerId;
  /// Supported Network Fabric SKU.Example: Compute / Aggregate racks. Once the user chooses a particular SKU, only supported racks can be added to the Network Fabric. The SKU determines whether it is a single / multi rack Network Fabric.
  final String? networkFabricSku;
  /// Provides you the latest status of the NFC service, whether it is Accepted, updating, Succeeded or Failed. During this process, the states keep changing based on the status of NFC provisioning.
  final String? provisioningState;
  /// Number of compute racks associated to Network Fabric.
  final int? rackCount;
  /// List of NetworkRack resource IDs under the Network Fabric. The number of racks allowed depends on the Network Fabric SKU.
  final List<String>? racks;
  /// Array of router IDs.
  final List<String>? routerIds;
  /// Number of servers.Possible values are from 1-16.
  final int? serverCountPerRack;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Network and credentials configuration currently applied to terminal server.
  final TerminalServerConfigurationResponse? terminalServerConfiguration;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetNetworkFabricResult].
  /// [administrativeState] Administrative state of the resource.
  /// [annotation] Switch configuration description.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configurationState] Configuration state of the resource.
  /// [fabricASN] ASN of CE devices for CE/PE connectivity.
  /// [fabricVersion] The version of Network Fabric.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [ipv4Prefix] IPv4Prefix for Management Network. Example: 10.1.0.0/19.
  /// [ipv6Prefix] IPv6Prefix for Management Network. Example: 3FFE:FFFF:0:CD40::/59
  /// [l2IsolationDomains] List of L2 Isolation Domain resource IDs under the Network Fabric.
  /// [l3IsolationDomains] List of L3 Isolation Domain resource IDs under the Network Fabric.
  /// [location] The geo-location where the resource lives
  /// [managementNetworkConfiguration] Configuration to be used to setup the management network.
  /// [name] The name of the resource
  /// [networkFabricControllerId] Azure resource ID for the NetworkFabricController the NetworkFabric belongs.
  /// [networkFabricSku] Supported Network Fabric SKU.Example: Compute / Aggregate racks. Once the user chooses a particular SKU, only supported racks can be added to the Network Fabric. The SKU determines whether it is a single / multi rack Network Fabric.
  /// [provisioningState] Provides you the latest status of the NFC service, whether it is Accepted, updating, Succeeded or Failed. During this process, the states keep changing based on the status of NFC provisioning.
  /// [rackCount] Number of compute racks associated to Network Fabric.
  /// [racks] List of NetworkRack resource IDs under the Network Fabric. The number of racks allowed depends on the Network Fabric SKU.
  /// [routerIds] Array of router IDs.
  /// [serverCountPerRack] Number of servers.Possible values are from 1-16.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [terminalServerConfiguration] Network and credentials configuration currently applied to terminal server.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetNetworkFabricResult({
    this.administrativeState,
    this.annotation,
    this.azureApiVersion,
    this.configurationState,
    this.fabricASN,
    this.fabricVersion,
    this.id,
    this.ipv4Prefix,
    this.ipv6Prefix,
    this.l2IsolationDomains,
    this.l3IsolationDomains,
    this.location,
    this.managementNetworkConfiguration,
    this.name,
    this.networkFabricControllerId,
    this.networkFabricSku,
    this.provisioningState,
    this.rackCount,
    this.racks,
    this.routerIds,
    this.serverCountPerRack,
    this.systemData,
    this.tags,
    this.terminalServerConfiguration,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': ?administrativeState,
      'annotation': ?annotation,
      'azureApiVersion': ?azureApiVersion,
      'configurationState': ?configurationState,
      'fabricASN': ?fabricASN,
      'fabricVersion': ?fabricVersion,
      'id': ?id,
      'ipv4Prefix': ?ipv4Prefix,
      'ipv6Prefix': ?ipv6Prefix,
      'l2IsolationDomains': ?l2IsolationDomains,
      'l3IsolationDomains': ?l3IsolationDomains,
      'location': ?location,
      'managementNetworkConfiguration': ?managementNetworkConfiguration?.toMap(),
      'name': ?name,
      'networkFabricControllerId': ?networkFabricControllerId,
      'networkFabricSku': ?networkFabricSku,
      'provisioningState': ?provisioningState,
      'rackCount': ?rackCount,
      'racks': ?racks,
      'routerIds': ?routerIds,
      'serverCountPerRack': ?serverCountPerRack,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'terminalServerConfiguration': ?terminalServerConfiguration?.toMap(),
      'type': ?type,
    };
  }

  factory GetNetworkFabricResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkFabricResult(
      administrativeState: (() { final guardedValue = map['administrativeState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurationState: (() { final guardedValue = map['configurationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fabricASN: (() { final guardedValue = map['fabricASN']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      fabricVersion: (() { final guardedValue = map['fabricVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv4Prefix: (() { final guardedValue = map['ipv4Prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6Prefix: (() { final guardedValue = map['ipv6Prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      l2IsolationDomains: (() { final guardedValue = map['l2IsolationDomains']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      l3IsolationDomains: (() { final guardedValue = map['l3IsolationDomains']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managementNetworkConfiguration: (() { final guardedValue = map['managementNetworkConfiguration']; if (guardedValue == null) return null; return ManagementNetworkConfigurationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkFabricControllerId: (() { final guardedValue = map['networkFabricControllerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkFabricSku: (() { final guardedValue = map['networkFabricSku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rackCount: (() { final guardedValue = map['rackCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      racks: (() { final guardedValue = map['racks']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      routerIds: (() { final guardedValue = map['routerIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      serverCountPerRack: (() { final guardedValue = map['serverCountPerRack']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      terminalServerConfiguration: (() { final guardedValue = map['terminalServerConfiguration']; if (guardedValue == null) return null; return TerminalServerConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
