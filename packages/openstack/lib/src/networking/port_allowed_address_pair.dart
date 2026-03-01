// ignore_for_file: unused_element, unnecessary_cast


class PortAllowedAddressPair {
  /// The additional IP address.
  final String ipAddress;
  /// The additional MAC address.
  final String? macAddress;

  /// Creates a new [PortAllowedAddressPair].
  /// [ipAddress] The additional IP address.
  /// [macAddress] The additional MAC address.
  PortAllowedAddressPair({
    required this.ipAddress,
    this.macAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'macAddress': ?macAddress,
    };
  }

  factory PortAllowedAddressPair.fromMap(Map<String, dynamic> map) {
    return PortAllowedAddressPair(
      ipAddress: map['ipAddress'] as String,
      macAddress: map['macAddress'] == null ? null : map['macAddress'] as String,
    );
  }
}

