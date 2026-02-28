// ignore_for_file: unused_element, unnecessary_cast

class ExternalAccessRuleSourceIpRange {
  /// A single IP address.
  final String? ipAddress;

  /// An IP address range in the CIDR format.
  final String? ipAddressRange;

  /// Creates a new [ExternalAccessRuleSourceIpRange].
  /// [ipAddress] A single IP address.
  /// [ipAddressRange] An IP address range in the CIDR format.
  ExternalAccessRuleSourceIpRange({
    this.ipAddress,
    this.ipAddressRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final ipAddressRangeValue = ipAddressRange;
    if (ipAddressRangeValue != null) {
      map['ipAddressRange'] = ipAddressRangeValue;
    }
    return map;
  }

  factory ExternalAccessRuleSourceIpRange.fromMap(Map<String, dynamic> map) {
    return ExternalAccessRuleSourceIpRange(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      ipAddressRange: map['ipAddressRange'] == null
          ? null
          : map['ipAddressRange'] as String,
    );
  }
}
