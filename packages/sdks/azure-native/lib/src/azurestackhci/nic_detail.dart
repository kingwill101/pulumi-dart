// ignore_for_file: unused_element, unnecessary_cast


/// The NIC Detail of a device.
class NicDetail {
  /// Adapter Name of NIC
  final String? adapterName;
  /// Component Id of NIC
  final String? componentId;
  /// Default Gateway of NIC
  final String? defaultGateway;
  /// Default Isolation of Management NIC
  final String? defaultIsolationId;
  /// DNS Servers for NIC
  final List<String>? dnsServers;
  /// Driver Version of NIC
  final String? driverVersion;
  /// Interface Description of NIC
  final String? interfaceDescription;
  /// Subnet Mask of NIC
  final String? ip4Address;
  /// Subnet Mask of NIC
  final String? subnetMask;

  /// Creates a new [NicDetail].
  /// [adapterName] Adapter Name of NIC
  /// [componentId] Component Id of NIC
  /// [defaultGateway] Default Gateway of NIC
  /// [defaultIsolationId] Default Isolation of Management NIC
  /// [dnsServers] DNS Servers for NIC
  /// [driverVersion] Driver Version of NIC
  /// [interfaceDescription] Interface Description of NIC
  /// [ip4Address] Subnet Mask of NIC
  /// [subnetMask] Subnet Mask of NIC
  NicDetail({
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

  factory NicDetail.fromMap(Map<String, dynamic> map) {
    return NicDetail(
      adapterName: map['adapterName'] == null ? null : map['adapterName'] as String,
      componentId: map['componentId'] == null ? null : map['componentId'] as String,
      defaultGateway: map['defaultGateway'] == null ? null : map['defaultGateway'] as String,
      defaultIsolationId: map['defaultIsolationId'] == null ? null : map['defaultIsolationId'] as String,
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers'] as List).cast<String>(),
      driverVersion: map['driverVersion'] == null ? null : map['driverVersion'] as String,
      interfaceDescription: map['interfaceDescription'] == null ? null : map['interfaceDescription'] as String,
      ip4Address: map['ip4Address'] == null ? null : map['ip4Address'] as String,
      subnetMask: map['subnetMask'] == null ? null : map['subnetMask'] as String,
    );
  }
}

