// ignore_for_file: unused_element, unnecessary_cast

class InstanceSecondaryNetworkInterface {
  /// Whether the network interface should be destroyed when the instance is terminated. Defaults to `true`. Forces replacement.
  final bool? deleteOnTermination;

  /// Device index for the network interface attachment. Defaults to `0`. Forces replacement.
  final int? deviceIndex;

  /// Type of network interface. Currently only `secondary` is supported. Defaults to `secondary`. Forces replacement.
  final String? interfaceType;
  final String? macAddress;

  /// Network card index for the interface. Each network card can have one secondary interface. Forces replacement.
  final int networkCardIndex;

  /// Number of private IP addresses to assign to the network interface. Defaults to `1`. Forces replacement.
  final int? privateIpAddressCount;

  /// List of private IP addresses to assign to the network interface. If not specified, AWS will automatically assign IP addresses based on `private_ip_address_count`. Forces replacement.
  final List<String>? privateIpAddresses;
  final String? secondaryInterfaceId;
  final String? secondaryNetworkId;

  /// ID of the secondary subnet in which to create the network interface. Forces replacement.
  final String secondarySubnetId;

  /// Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs. Defaults true.
  final bool? sourceDestCheck;
  final String? status;

  InstanceSecondaryNetworkInterface({
    this.deleteOnTermination,
    this.deviceIndex,
    this.interfaceType,
    this.macAddress,
    required this.networkCardIndex,
    this.privateIpAddressCount,
    this.privateIpAddresses,
    this.secondaryInterfaceId,
    this.secondaryNetworkId,
    required this.secondarySubnetId,
    this.sourceDestCheck,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deleteOnTerminationValue = deleteOnTermination;
    if (deleteOnTerminationValue != null) {
      map['deleteOnTermination'] = deleteOnTerminationValue;
    }
    final deviceIndexValue = deviceIndex;
    if (deviceIndexValue != null) {
      map['deviceIndex'] = deviceIndexValue;
    }
    final interfaceTypeValue = interfaceType;
    if (interfaceTypeValue != null) {
      map['interfaceType'] = interfaceTypeValue;
    }
    final macAddressValue = macAddress;
    if (macAddressValue != null) {
      map['macAddress'] = macAddressValue;
    }
    map['networkCardIndex'] = networkCardIndex;
    final privateIpAddressCountValue = privateIpAddressCount;
    if (privateIpAddressCountValue != null) {
      map['privateIpAddressCount'] = privateIpAddressCountValue;
    }
    final privateIpAddressesValue = privateIpAddresses;
    if (privateIpAddressesValue != null) {
      map['privateIpAddresses'] = privateIpAddressesValue;
    }
    final secondaryInterfaceIdValue = secondaryInterfaceId;
    if (secondaryInterfaceIdValue != null) {
      map['secondaryInterfaceId'] = secondaryInterfaceIdValue;
    }
    final secondaryNetworkIdValue = secondaryNetworkId;
    if (secondaryNetworkIdValue != null) {
      map['secondaryNetworkId'] = secondaryNetworkIdValue;
    }
    map['secondarySubnetId'] = secondarySubnetId;
    final sourceDestCheckValue = sourceDestCheck;
    if (sourceDestCheckValue != null) {
      map['sourceDestCheck'] = sourceDestCheckValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory InstanceSecondaryNetworkInterface.fromMap(Map<String, dynamic> map) {
    return InstanceSecondaryNetworkInterface(
      deleteOnTermination: map['deleteOnTermination'] == null
          ? null
          : map['deleteOnTermination'] as bool,
      deviceIndex:
          map['deviceIndex'] == null ? null : map['deviceIndex'] as int,
      interfaceType:
          map['interfaceType'] == null ? null : map['interfaceType'] as String,
      macAddress:
          map['macAddress'] == null ? null : map['macAddress'] as String,
      networkCardIndex: map['networkCardIndex'] as int,
      privateIpAddressCount: map['privateIpAddressCount'] == null
          ? null
          : map['privateIpAddressCount'] as int,
      privateIpAddresses: map['privateIpAddresses'] == null
          ? null
          : (map['privateIpAddresses'] as List).cast<String>(),
      secondaryInterfaceId: map['secondaryInterfaceId'] == null
          ? null
          : map['secondaryInterfaceId'] as String,
      secondaryNetworkId: map['secondaryNetworkId'] == null
          ? null
          : map['secondaryNetworkId'] as String,
      secondarySubnetId: map['secondarySubnetId'] as String,
      sourceDestCheck: map['sourceDestCheck'] == null
          ? null
          : map['sourceDestCheck'] as bool,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
