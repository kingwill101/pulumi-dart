// ignore_for_file: unused_element, unnecessary_cast

class IpSetIpSetDescriptor {
  /// The string like IPV4 or IPV6.
  final String type;

  /// The CIDR notation.
  final String value;

  /// Creates a new [IpSetIpSetDescriptor].
  /// [type] The string like IPV4 or IPV6.
  /// [value] The CIDR notation.
  IpSetIpSetDescriptor({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['value'] = value;
    return map;
  }

  factory IpSetIpSetDescriptor.fromMap(Map<String, dynamic> map) {
    return IpSetIpSetDescriptor(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
