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
  const NicDetailResponse({
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
      adapterName: (() { final guardedValue = map['adapterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      componentId: (() { final guardedValue = map['componentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultGateway: (() { final guardedValue = map['defaultGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultIsolationId: (() { final guardedValue = map['defaultIsolationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      driverVersion: (() { final guardedValue = map['driverVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interfaceDescription: (() { final guardedValue = map['interfaceDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ip4Address: (() { final guardedValue = map['ip4Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetMask: (() { final guardedValue = map['subnetMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

