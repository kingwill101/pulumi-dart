// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_user_defined_field_base_compute_beta.dart';

class SecurityPolicyUserDefinedFieldComputeBeta {
  /// The base relative to which 'offset' is measured. Possible values are: - IPV4: Points to the beginning of the IPv4 header. - IPV6: Points to the beginning of the IPv6 header. - TCP: Points to the beginning of the TCP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments. - UDP: Points to the beginning of the UDP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments. required
  final SecurityPolicyUserDefinedFieldBaseComputeBeta? base;
  /// If specified, apply this mask (bitwise AND) to the field to ignore bits before matching. Encoded as a hexadecimal number (starting with "0x"). The last byte of the field (in network byte order) corresponds to the least significant byte of the mask.
  final String? mask;
  /// The name of this field. Must be unique within the policy.
  final String? name;
  /// Offset of the first byte of the field (in network byte order) relative to 'base'.
  final int? offset;
  /// Size of the field in bytes. Valid values: 1-4.
  final int? size;

  /// Creates a new [SecurityPolicyUserDefinedFieldComputeBeta].
  /// [base] The base relative to which 'offset' is measured. Possible values are: - IPV4: Points to the beginning of the IPv4 header. - IPV6: Points to the beginning of the IPv6 header. - TCP: Points to the beginning of the TCP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments. - UDP: Points to the beginning of the UDP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments. required
  /// [mask] If specified, apply this mask (bitwise AND) to the field to ignore bits before matching. Encoded as a hexadecimal number (starting with "0x"). The last byte of the field (in network byte order) corresponds to the least significant byte of the mask.
  /// [name] The name of this field. Must be unique within the policy.
  /// [offset] Offset of the first byte of the field (in network byte order) relative to 'base'.
  /// [size] Size of the field in bytes. Valid values: 1-4.
  SecurityPolicyUserDefinedFieldComputeBeta({
    this.base,
    this.mask,
    this.name,
    this.offset,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'base': ?base == null ? null : base!.value,
      'mask': ?mask,
      'name': ?name,
      'offset': ?offset,
      'size': ?size,
    };
  }

  factory SecurityPolicyUserDefinedFieldComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyUserDefinedFieldComputeBeta(
      base: map['base'] == null ? null : SecurityPolicyUserDefinedFieldBaseComputeBeta.fromValue(map['base'] as String),
      mask: map['mask'] == null ? null : map['mask'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      offset: map['offset'] == null ? null : map['offset'] as int,
      size: map['size'] == null ? null : map['size'] as int,
    );
  }
}

