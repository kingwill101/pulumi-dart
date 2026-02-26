// ignore_for_file: unused_element, unnecessary_cast

/// Allowed IP range with user-provided description.
class AllowedIpRangeResponse2 {
  /// Optional. User-provided description. It must contain at most 300 characters.
  final String description;

  /// IP address or range, defined using CIDR notation, of requests that this rule applies to. Examples: `192.168.1.1` or `192.168.0.0/16` or `2001:db8::/32` or `2001:0db8:0000:0042:0000:8a2e:0370:7334`. IP range prefixes should be properly truncated. For example, `1.2.3.4/24` should be truncated to `1.2.3.0/24`. Similarly, for IPv6, `2001:db8::1/32` should be truncated to `2001:db8::/32`.
  final String value;

  AllowedIpRangeResponse2({
    required this.description,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['value'] = value;
    return map;
  }

  factory AllowedIpRangeResponse2.fromMap(Map<String, dynamic> map) {
    return AllowedIpRangeResponse2(
      description: map['description'] as String,
      value: map['value'] as String,
    );
  }
}
