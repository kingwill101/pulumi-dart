// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The NIC Detail of a device.
class NicDetailResponse {
  /// Adapter Name of NIC
  final pulumi.Input<String>? adapterName;
  /// Component Id of NIC
  final pulumi.Input<String>? componentId;
  /// Default Gateway of NIC
  final pulumi.Input<String>? defaultGateway;
  /// Default Isolation of Management NIC
  final pulumi.Input<String>? defaultIsolationId;
  /// DNS Servers for NIC
  final pulumi.Input<List<String>>? dnsServers;
  /// Driver Version of NIC
  final pulumi.Input<String>? driverVersion;
  /// Interface Description of NIC
  final pulumi.Input<String>? interfaceDescription;
  /// Subnet Mask of NIC
  final pulumi.Input<String>? ip4Address;
  /// Subnet Mask of NIC
  final pulumi.Input<String>? subnetMask;

  /// Creates a new [NicDetailResponse].
  /// [adapterName] Adapter Name of NIC
  /// [componentId] Component Id of NIC
  /// [defaultGateway] Default Gateway of NIC
  /// [defaultIsolationId] Default Isolation of Management NIC
  /// [dnsServers] DNS Servers for NIC
  /// [driverVersion] Driver Version of NIC
  /// [interfaceDescription] Interface Description of NIC
  /// [ip4Address] Subnet Mask of NIC
  /// [subnetMask] Subnet Mask of NIC
  NicDetailResponse({
    this.adapterName,
    this.componentId,
    this.defaultGateway,
    this.defaultIsolationId,
    this.dnsServers,
    this.driverVersion,
    this.interfaceDescription,
    this.ip4Address,
    this.subnetMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adapterName': ?adapterName,
      'componentId': ?componentId,
      'defaultGateway': ?defaultGateway,
      'defaultIsolationId': ?defaultIsolationId,
      'dnsServers': ?dnsServers,
      'driverVersion': ?driverVersion,
      'interfaceDescription': ?interfaceDescription,
      'ip4Address': ?ip4Address,
      'subnetMask': ?subnetMask,
    };
  }

  factory NicDetailResponse.fromMap(Map<String, dynamic> map) {
    return NicDetailResponse(
      adapterName: map['adapterName'] == null ? null : (map['adapterName'] as String).input(),
      componentId: map['componentId'] == null ? null : (map['componentId'] as String).input(),
      defaultGateway: map['defaultGateway'] == null ? null : (map['defaultGateway'] as String).input(),
      defaultIsolationId: map['defaultIsolationId'] == null ? null : (map['defaultIsolationId'] as String).input(),
      dnsServers: map['dnsServers'] == null ? null : ((map['dnsServers'] as List).cast<String>()).input(),
      driverVersion: map['driverVersion'] == null ? null : (map['driverVersion'] as String).input(),
      interfaceDescription: map['interfaceDescription'] == null ? null : (map['interfaceDescription'] as String).input(),
      ip4Address: map['ip4Address'] == null ? null : (map['ip4Address'] as String).input(),
      subnetMask: map['subnetMask'] == null ? null : (map['subnetMask'] as String).input(),
    );
  }
}

