// ignore_for_file: unused_element, unnecessary_cast

class IpSetIpSetDescriptorWafregional {
  /// The string like IPV4 or IPV6.
  final String type;

  /// The CIDR notation.
  final String value;

  IpSetIpSetDescriptorWafregional({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['value'] = value;
    return map;
  }

  factory IpSetIpSetDescriptorWafregional.fromMap(Map<String, dynamic> map) {
    return IpSetIpSetDescriptorWafregional(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
