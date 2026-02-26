// ignore_for_file: unused_element, unnecessary_cast

class GetExternalAccessRuleSourceIpRange {
  /// A single IP address.
  final String ipAddress;

  /// An IP address range in the CIDR format.
  final String ipAddressRange;

  GetExternalAccessRuleSourceIpRange({
    required this.ipAddress,
    required this.ipAddressRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAddress'] = ipAddress;
    map['ipAddressRange'] = ipAddressRange;
    return map;
  }

  factory GetExternalAccessRuleSourceIpRange.fromMap(Map<String, dynamic> map) {
    return GetExternalAccessRuleSourceIpRange(
      ipAddress: map['ipAddress'] as String,
      ipAddressRange: map['ipAddressRange'] as String,
    );
  }
}
