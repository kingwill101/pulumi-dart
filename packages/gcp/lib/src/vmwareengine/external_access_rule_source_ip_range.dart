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
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'ipAddressRange': ?ipAddressRange,
    };
  }

  factory ExternalAccessRuleSourceIpRange.fromMap(Map<String, dynamic> map) {
    return ExternalAccessRuleSourceIpRange(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      ipAddressRange: map['ipAddressRange'] == null ? null : map['ipAddressRange'] as String,
    );
  }
}

