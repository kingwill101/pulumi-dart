// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'interface_dnssettings_response.dart';
import 'ipconfiguration_response.dart';
import 'network_interface_status_response.dart';
import 'network_security_group_arm_reference_response.dart';
import 'system_data_response.dart';

/// Result data returned by getNetworkInterface.
class GetNetworkInterfaceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Boolean indicating whether this is a existing local network interface or if one should be created.
  final bool? createFromLocal;
  /// DNS Settings for the interface
  final InterfaceDNSSettingsResponse? dnsSettings;
  /// The extendedLocation of the resource.
  final ExtendedLocationResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// IPConfigurations - A list of IPConfigurations of the network interface.
  final List<IPConfigurationResponse>? ipConfigurations;
  /// The geo-location where the resource lives
  final String location;
  /// MacAddress - The MAC address of the network interface.
  final String? macAddress;
  /// The name of the resource
  final String name;
  /// NetworkSecurityGroup - Network Security Group attached to the network interface.
  final NetworkSecurityGroupArmReferenceResponse? networkSecurityGroup;
  /// Provisioning state of the network interface.
  final String provisioningState;
  /// The observed state of network interfaces
  final NetworkInterfaceStatusResponse status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetNetworkInterfaceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createFromLocal] Boolean indicating whether this is a existing local network interface or if one should be created.
  /// [dnsSettings] DNS Settings for the interface
  /// [extendedLocation] The extendedLocation of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [ipConfigurations] IPConfigurations - A list of IPConfigurations of the network interface.
  /// [location] The geo-location where the resource lives
  /// [macAddress] MacAddress - The MAC address of the network interface.
  /// [name] The name of the resource
  /// [networkSecurityGroup] NetworkSecurityGroup - Network Security Group attached to the network interface.
  /// [provisioningState] Provisioning state of the network interface.
  /// [status] The observed state of network interfaces
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetNetworkInterfaceResult({
    required this.azureApiVersion,
    this.createFromLocal,
    this.dnsSettings,
    this.extendedLocation,
    required this.id,
    this.ipConfigurations,
    required this.location,
    this.macAddress,
    required this.name,
    this.networkSecurityGroup,
    required this.provisioningState,
    required this.status,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createFromLocal': ?createFromLocal,
      'dnsSettings': ?dnsSettings?.toMap(),
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': id,
      'ipConfigurations': ?(() { final guardedValue = ipConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<IPConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': location,
      'macAddress': ?macAddress,
      'name': name,
      'networkSecurityGroup': ?networkSecurityGroup?.toMap(),
      'provisioningState': provisioningState,
      'status': status.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetNetworkInterfaceResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createFromLocal: (() { final guardedValue = map['createFromLocal']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dnsSettings: (() { final guardedValue = map['dnsSettings']; if (guardedValue == null) return null; return InterfaceDNSSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<IPConfigurationResponse>(guardedValue, (value) => IPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: map['location'] as String,
      macAddress: (() { final guardedValue = map['macAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      networkSecurityGroup: (() { final guardedValue = map['networkSecurityGroup']; if (guardedValue == null) return null; return NetworkSecurityGroupArmReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: map['provisioningState'] as String,
      status: NetworkInterfaceStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

