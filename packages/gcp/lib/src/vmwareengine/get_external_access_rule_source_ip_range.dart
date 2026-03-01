// ignore_for_file: unused_element, unnecessary_cast


class GetExternalAccessRuleSourceIpRange {
  /// A single IP address.
  final String ipAddress;
  /// An IP address range in the CIDR format.
  final String ipAddressRange;

  /// Creates a new [GetExternalAccessRuleSourceIpRange].
  /// [ipAddress] A single IP address.
  /// [ipAddressRange] An IP address range in the CIDR format.
  GetExternalAccessRuleSourceIpRange({
    required this.ipAddress,
    required this.ipAddressRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'ipAddressRange': ipAddressRange,
    };
  }

  factory GetExternalAccessRuleSourceIpRange.fromMap(Map<String, dynamic> map) {
    return GetExternalAccessRuleSourceIpRange(
      ipAddress: map['ipAddress'] as String,
      ipAddressRange: map['ipAddressRange'] as String,
    );
  }
}

