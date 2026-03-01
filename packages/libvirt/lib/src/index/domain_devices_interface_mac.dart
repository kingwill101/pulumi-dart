// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceMac {
  /// Specifies the specific MAC address assigned to the network interface.
  final String address;
  /// Determines whether to validate the MAC address format.
  final String? check;
  /// Configures the type of MAC address assignment (static or dynamic).
  final String? type;

  /// Creates a new [DomainDevicesInterfaceMac].
  /// [address] Specifies the specific MAC address assigned to the network interface.
  /// [check] Determines whether to validate the MAC address format.
  /// [type] Configures the type of MAC address assignment (static or dynamic).
  DomainDevicesInterfaceMac({
    required this.address,
    this.check,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'check': ?check,
      'type': ?type,
    };
  }

  factory DomainDevicesInterfaceMac.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceMac(
      address: map['address'] as String,
      check: map['check'] == null ? null : map['check'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

