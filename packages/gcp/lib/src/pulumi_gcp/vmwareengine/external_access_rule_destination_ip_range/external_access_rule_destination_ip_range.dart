// ignore_for_file: unused_element, unnecessary_cast

class ExternalAccessRuleDestinationIpRange {
  /// The name of an `ExternalAddress` resource.
  final String? externalAddress;

  /// An IP address range in the CIDR format.
  final String? ipAddressRange;

  ExternalAccessRuleDestinationIpRange({
    this.externalAddress,
    this.ipAddressRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final externalAddressValue = externalAddress;
    if (externalAddressValue != null) {
      map['externalAddress'] = externalAddressValue;
    }
    final ipAddressRangeValue = ipAddressRange;
    if (ipAddressRangeValue != null) {
      map['ipAddressRange'] = ipAddressRangeValue;
    }
    return map;
  }

  factory ExternalAccessRuleDestinationIpRange.fromMap(
      Map<String, dynamic> map) {
    return ExternalAccessRuleDestinationIpRange(
      externalAddress: map['externalAddress'] == null
          ? null
          : map['externalAddress'] as String,
      ipAddressRange: map['ipAddressRange'] == null
          ? null
          : map['ipAddressRange'] as String,
    );
  }
}
