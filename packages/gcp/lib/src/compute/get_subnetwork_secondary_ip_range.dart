// ignore_for_file: unused_element, unnecessary_cast

class GetSubnetworkSecondaryIpRange {
  /// The range of IP addresses belonging to this subnetwork
  /// secondary range.
  final String ipCidrRange;

  /// The name associated with this subnetwork secondary range, used
  /// when adding an alias IP range to a VM instance.
  final String rangeName;

  /// Creates a new [GetSubnetworkSecondaryIpRange].
  /// [ipCidrRange] The range of IP addresses belonging to this subnetwork
  /// [rangeName] The name associated with this subnetwork secondary range, used
  GetSubnetworkSecondaryIpRange({
    required this.ipCidrRange,
    required this.rangeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipCidrRange': ipCidrRange,
      'rangeName': rangeName,
    };
  }

  factory GetSubnetworkSecondaryIpRange.fromMap(Map<String, dynamic> map) {
    return GetSubnetworkSecondaryIpRange(
      ipCidrRange: map['ipCidrRange'] as String,
      rangeName: map['rangeName'] as String,
    );
  }
}
