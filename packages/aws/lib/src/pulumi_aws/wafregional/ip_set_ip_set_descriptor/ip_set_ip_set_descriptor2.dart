// ignore_for_file: unused_element, unnecessary_cast

class IpSetIpSetDescriptor2 {
  /// The string like IPV4 or IPV6.
  final String type;

  /// The CIDR notation.
  final String value;

  IpSetIpSetDescriptor2({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['value'] = value;
    return map;
  }

  factory IpSetIpSetDescriptor2.fromMap(Map<String, dynamic> map) {
    return IpSetIpSetDescriptor2(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
