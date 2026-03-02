// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The NIC Detail of a device.
class HciNicDetailResponse {
  /// Adapter Name of NIC
  final pulumi.Input<String> adapterName;
  /// Component Id of NIC
  final pulumi.Input<String> componentId;
  /// Default Gateway of NIC
  final pulumi.Input<String> defaultGateway;
  /// Default Isolation of Management NIC
  final pulumi.Input<String> defaultIsolationId;
  /// DNS Servers for NIC
  final pulumi.Input<List<String>> dnsServers;
  /// Driver Version of NIC
  final pulumi.Input<String> driverVersion;
  /// Interface Description of NIC
  final pulumi.Input<String> interfaceDescription;
  /// Subnet Mask of NIC
  final pulumi.Input<String> ip4Address;
  /// MAC address information of NIC.
  final pulumi.Input<String> macAddress;
  /// The status of NIC, up, disconnected.
  final pulumi.Input<String> nicStatus;
  /// The type of NIC, physical, virtual, management.
  final pulumi.Input<String> nicType;
  /// The slot attached to the NIC.
  final pulumi.Input<String> slot;
  /// Subnet Mask of NIC
  final pulumi.Input<String> subnetMask;
  /// The switch attached to the NIC, if any.
  final pulumi.Input<String> switchName;
  /// The VLAN ID of the physical NIC.
  final pulumi.Input<String> vlanId;

  /// Creates a new [HciNicDetailResponse].
  /// [adapterName] Adapter Name of NIC
  /// [componentId] Component Id of NIC
  /// [defaultGateway] Default Gateway of NIC
  /// [defaultIsolationId] Default Isolation of Management NIC
  /// [dnsServers] DNS Servers for NIC
  /// [driverVersion] Driver Version of NIC
  /// [interfaceDescription] Interface Description of NIC
  /// [ip4Address] Subnet Mask of NIC
  /// [macAddress] MAC address information of NIC.
  /// [nicStatus] The status of NIC, up, disconnected.
  /// [nicType] The type of NIC, physical, virtual, management.
  /// [slot] The slot attached to the NIC.
  /// [subnetMask] Subnet Mask of NIC
  /// [switchName] The switch attached to the NIC, if any.
  /// [vlanId] The VLAN ID of the physical NIC.
  HciNicDetailResponse({
    required this.adapterName,
    required this.componentId,
    required this.defaultGateway,
    required this.defaultIsolationId,
    required this.dnsServers,
    required this.driverVersion,
    required this.interfaceDescription,
    required this.ip4Address,
    required this.macAddress,
    required this.nicStatus,
    required this.nicType,
    required this.slot,
    required this.subnetMask,
    required this.switchName,
    required this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adapterName': adapterName,
      'componentId': componentId,
      'defaultGateway': defaultGateway,
      'defaultIsolationId': defaultIsolationId,
      'dnsServers': dnsServers,
      'driverVersion': driverVersion,
      'interfaceDescription': interfaceDescription,
      'ip4Address': ip4Address,
      'macAddress': macAddress,
      'nicStatus': nicStatus,
      'nicType': nicType,
      'slot': slot,
      'subnetMask': subnetMask,
      'switchName': switchName,
      'vlanId': vlanId,
    };
  }

  factory HciNicDetailResponse.fromMap(Map<String, dynamic> map) {
    return HciNicDetailResponse(
      adapterName: (map['adapterName'] as String).input(),
      componentId: (map['componentId'] as String).input(),
      defaultGateway: (map['defaultGateway'] as String).input(),
      defaultIsolationId: (map['defaultIsolationId'] as String).input(),
      dnsServers: ((map['dnsServers'] as List).cast<String>()).input(),
      driverVersion: (map['driverVersion'] as String).input(),
      interfaceDescription: (map['interfaceDescription'] as String).input(),
      ip4Address: (map['ip4Address'] as String).input(),
      macAddress: (map['macAddress'] as String).input(),
      nicStatus: (map['nicStatus'] as String).input(),
      nicType: (map['nicType'] as String).input(),
      slot: (map['slot'] as String).input(),
      subnetMask: (map['subnetMask'] as String).input(),
      switchName: (map['switchName'] as String).input(),
      vlanId: (map['vlanId'] as String).input(),
    );
  }
}

