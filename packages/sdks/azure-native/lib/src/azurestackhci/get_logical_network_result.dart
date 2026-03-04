// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'logical_network_properties_dhcp_options_response.dart';
import 'logical_network_status_response.dart';
import 'subnet_response.dart';
import 'system_data_response.dart';

/// Result data returned by getLogicalNetwork.
class GetLogicalNetworkResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// DhcpOptions contains an array of DNS servers available to VMs deployed in the logical network. Standard DHCP option for a subnet overrides logical network DHCP options.
  final LogicalNetworkPropertiesDhcpOptionsResponse? dhcpOptions;

  /// The extendedLocation of the resource.
  final ExtendedLocationResponse? extendedLocation;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The geo-location where the resource lives
  final String location;

  /// The name of the resource
  final String name;

  /// Provisioning state of the logical network.
  final String provisioningState;

  /// The observed state of logical networks
  final LogicalNetworkStatusResponse status;

  /// Subnet - list of subnets under the logical network
  final List<SubnetResponse>? subnets;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// name of the network switch to be used for VMs
  final String? vmSwitchName;

  /// Creates a new [GetLogicalNetworkResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dhcpOptions] DhcpOptions contains an array of DNS servers available to VMs deployed in the logical network. Standard DHCP option for a subnet overrides logical network DHCP options.
  /// [extendedLocation] The extendedLocation of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the logical network.
  /// [status] The observed state of logical networks
  /// [subnets] Subnet - list of subnets under the logical network
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vmSwitchName] name of the network switch to be used for VMs
  GetLogicalNetworkResult({
    required this.azureApiVersion,
    this.dhcpOptions,
    this.extendedLocation,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.status,
    this.subnets,
    required this.systemData,
    this.tags,
    required this.type,
    this.vmSwitchName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dhcpOptions': ?dhcpOptions?.toMap(),
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'status': status.toMap(),
      'subnets': ?(() {
        final guardedValue = subnets;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<SubnetResponse, Map<String, dynamic>>(
          guardedValue,
          (value) => value.toMap(),
        );
      })(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'vmSwitchName': ?vmSwitchName,
    };
  }

  factory GetLogicalNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetLogicalNetworkResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dhcpOptions: (() {
        final guardedValue = map['dhcpOptions'];
        if (guardedValue == null) return null;
        return LogicalNetworkPropertiesDhcpOptionsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      extendedLocation: (() {
        final guardedValue = map['extendedLocation'];
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      status: LogicalNetworkStatusResponse.fromMap(
        (map['status']! as Map).cast<String, dynamic>(),
      ),
      subnets: (() {
        final guardedValue = map['subnets'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<SubnetResponse>(
          guardedValue,
          (value) =>
              SubnetResponse.fromMap((value as Map).cast<String, dynamic>()),
        );
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      vmSwitchName: (() {
        final guardedValue = map['vmSwitchName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
