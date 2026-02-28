// ignore_for_file: unused_element, unnecessary_cast

/// Represents a secondary IP range of a subnetwork.
class SubnetworkSecondaryRangeResponse {
  /// The range of IP addresses belonging to this subnetwork secondary range. Provide this property when you create the subnetwork. Ranges must be unique and non-overlapping with all primary and secondary IP ranges within a network. Only IPv4 is supported. The range can be any range listed in the Valid ranges list.
  final String ipCidrRange;

  /// The name associated with this subnetwork secondary range, used when adding an alias IP range to a VM instance. The name must be 1-63 characters long, and comply with RFC1035. The name must be unique within the subnetwork.
  final String rangeName;

  /// The URL of the reserved internal range.
  final String reservedInternalRange;

  /// Creates a new [SubnetworkSecondaryRangeResponse].
  /// [ipCidrRange] The range of IP addresses belonging to this subnetwork secondary range. Provide this property when you create the subnetwork. Ranges must be unique and non-overlapping with all primary and secondary IP ranges within a network. Only IPv4 is supported. The range can be any range listed in the Valid ranges list.
  /// [rangeName] The name associated with this subnetwork secondary range, used when adding an alias IP range to a VM instance. The name must be 1-63 characters long, and comply with RFC1035. The name must be unique within the subnetwork.
  /// [reservedInternalRange] The URL of the reserved internal range.
  SubnetworkSecondaryRangeResponse({
    required this.ipCidrRange,
    required this.rangeName,
    required this.reservedInternalRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipCidrRange'] = ipCidrRange;
    map['rangeName'] = rangeName;
    map['reservedInternalRange'] = reservedInternalRange;
    return map;
  }

  factory SubnetworkSecondaryRangeResponse.fromMap(Map<String, dynamic> map) {
    return SubnetworkSecondaryRangeResponse(
      ipCidrRange: map['ipCidrRange'] as String,
      rangeName: map['rangeName'] as String,
      reservedInternalRange: map['reservedInternalRange'] as String,
    );
  }
}
