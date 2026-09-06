// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'system_data_response.dart';
import 'virtual_network_properties_response_dhcp_options.dart';
import 'virtual_network_properties_response_subnets.dart';
import 'virtual_network_status_response.dart';

/// Result data returned by getVirtualNetwork.
class GetVirtualNetworkResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// DhcpOptions contains an array of DNS servers available to VMs deployed in the virtual network. Standard DHCP option for a subnet overrides VNET DHCP options.
  final VirtualNetworkPropertiesResponseDhcpOptions? dhcpOptions;
  /// The extendedLocation of the resource.
  final ExtendedLocationResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Type of the network
  final String? networkType;
  /// Provisioning state of the virtual network.
  final String? provisioningState;
  /// The observed state of virtual networks
  final VirtualNetworkStatusResponse? status;
  /// Subnet - list of subnets under the virtual network
  final List<VirtualNetworkPropertiesResponseSubnets>? subnets;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// name of the network switch to be used for VMs
  final String? vmSwitchName;

  /// Creates a new [GetVirtualNetworkResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dhcpOptions] DhcpOptions contains an array of DNS servers available to VMs deployed in the virtual network. Standard DHCP option for a subnet overrides VNET DHCP options.
  /// [extendedLocation] The extendedLocation of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkType] Type of the network
  /// [provisioningState] Provisioning state of the virtual network.
  /// [status] The observed state of virtual networks
  /// [subnets] Subnet - list of subnets under the virtual network
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vmSwitchName] name of the network switch to be used for VMs
  const GetVirtualNetworkResult({
    this.azureApiVersion,
    this.dhcpOptions,
    this.extendedLocation,
    this.id,
    this.location,
    this.name,
    this.networkType,
    this.provisioningState,
    this.status,
    this.subnets,
    this.systemData,
    this.tags,
    this.type,
    this.vmSwitchName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dhcpOptions': ?dhcpOptions?.toMap(),
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'networkType': ?networkType,
      'provisioningState': ?provisioningState,
      'status': ?status?.toMap(),
      'subnets': ?(() { final guardedValue = subnets; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualNetworkPropertiesResponseSubnets, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'vmSwitchName': ?vmSwitchName,
    };
  }

  factory GetVirtualNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dhcpOptions: (() { final guardedValue = map['dhcpOptions']; if (guardedValue == null) return null; return VirtualNetworkPropertiesResponseDhcpOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return VirtualNetworkStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualNetworkPropertiesResponseSubnets>(guardedValue, (value) => VirtualNetworkPropertiesResponseSubnets.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmSwitchName: (() { final guardedValue = map['vmSwitchName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
