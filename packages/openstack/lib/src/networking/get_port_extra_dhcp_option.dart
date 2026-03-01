// ignore_for_file: unused_element, unnecessary_cast


class GetPortExtraDhcpOption {
  /// IP protocol version
  final int ipVersion;
  /// The name of the port.
  final String name;
  /// Value of the DHCP option.
  final String value;

  /// Creates a new [GetPortExtraDhcpOption].
  /// [ipVersion] IP protocol version
  /// [name] The name of the port.
  /// [value] Value of the DHCP option.
  GetPortExtraDhcpOption({
    required this.ipVersion,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipVersion': ipVersion,
      'name': name,
      'value': value,
    };
  }

  factory GetPortExtraDhcpOption.fromMap(Map<String, dynamic> map) {
    return GetPortExtraDhcpOption(
      ipVersion: map['ipVersion'] as int,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

