// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network Interface Card (NIC) Details of edge machine.
class EdgeMachineNicDetailResponse {
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
  /// Describes the RDMA capability of the network adapter.
  final pulumi.Input<String> rdmaCapability;
  /// The slot attached to the NIC.
  final pulumi.Input<String> slot;
  /// Subnet Mask of NIC
  final pulumi.Input<String> subnetMask;
  /// The switch attached to the NIC, if any.
  final pulumi.Input<String> switchName;
  /// The VLAN ID of the physical NIC.
  final pulumi.Input<String> vlanId;

  /// Creates a new [EdgeMachineNicDetailResponse].
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
  /// [rdmaCapability] Describes the RDMA capability of the network adapter.
  /// [slot] The slot attached to the NIC.
  /// [subnetMask] Subnet Mask of NIC
  /// [switchName] The switch attached to the NIC, if any.
  /// [vlanId] The VLAN ID of the physical NIC.
  const EdgeMachineNicDetailResponse({
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
    required this.rdmaCapability,
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
      'rdmaCapability': rdmaCapability,
      'slot': slot,
      'subnetMask': subnetMask,
      'switchName': switchName,
      'vlanId': vlanId,
    };
  }

  factory EdgeMachineNicDetailResponse.fromMap(Map<String, dynamic> map) {
    return EdgeMachineNicDetailResponse(
      adapterName: pulumi.Input.fromValue(map['adapterName'] as String),
      componentId: pulumi.Input.fromValue(map['componentId'] as String),
      defaultGateway: pulumi.Input.fromValue(map['defaultGateway'] as String),
      defaultIsolationId: pulumi.Input.fromValue(map['defaultIsolationId'] as String),
      dnsServers: pulumi.Input.fromValue((map['dnsServers'] as List).cast<String>()),
      driverVersion: pulumi.Input.fromValue(map['driverVersion'] as String),
      interfaceDescription: pulumi.Input.fromValue(map['interfaceDescription'] as String),
      ip4Address: pulumi.Input.fromValue(map['ip4Address'] as String),
      macAddress: pulumi.Input.fromValue(map['macAddress'] as String),
      nicStatus: pulumi.Input.fromValue(map['nicStatus'] as String),
      nicType: pulumi.Input.fromValue(map['nicType'] as String),
      rdmaCapability: pulumi.Input.fromValue(map['rdmaCapability'] as String),
      slot: pulumi.Input.fromValue(map['slot'] as String),
      subnetMask: pulumi.Input.fromValue(map['subnetMask'] as String),
      switchName: pulumi.Input.fromValue(map['switchName'] as String),
      vlanId: pulumi.Input.fromValue(map['vlanId'] as String),
    );
  }
}

