// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyUserDefinedFieldResponse2 {
  /// The base relative to which 'offset' is measured. Possible values are: - IPV4: Points to the beginning of the IPv4 header. - IPV6: Points to the beginning of the IPv6 header. - TCP: Points to the beginning of the TCP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments. - UDP: Points to the beginning of the UDP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments. required
  final String base;

  /// If specified, apply this mask (bitwise AND) to the field to ignore bits before matching. Encoded as a hexadecimal number (starting with "0x"). The last byte of the field (in network byte order) corresponds to the least significant byte of the mask.
  final String mask;

  /// The name of this field. Must be unique within the policy.
  final String name;

  /// Offset of the first byte of the field (in network byte order) relative to 'base'.
  final int offset;

  /// Size of the field in bytes. Valid values: 1-4.
  final int size;

  SecurityPolicyUserDefinedFieldResponse2({
    required this.base,
    required this.mask,
    required this.name,
    required this.offset,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['base'] = base;
    map['mask'] = mask;
    map['name'] = name;
    map['offset'] = offset;
    map['size'] = size;
    return map;
  }

  factory SecurityPolicyUserDefinedFieldResponse2.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyUserDefinedFieldResponse2(
      base: map['base'] as String,
      mask: map['mask'] as String,
      name: map['name'] as String,
      offset: map['offset'] as int,
      size: map['size'] as int,
    );
  }
}
