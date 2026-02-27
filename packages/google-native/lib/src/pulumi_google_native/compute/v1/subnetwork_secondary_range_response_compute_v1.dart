// ignore_for_file: unused_element, unnecessary_cast

/// Represents a secondary IP range of a subnetwork.
class SubnetworkSecondaryRangeResponseComputeV1 {
  /// The range of IP addresses belonging to this subnetwork secondary range. Provide this property when you create the subnetwork. Ranges must be unique and non-overlapping with all primary and secondary IP ranges within a network. Only IPv4 is supported. The range can be any range listed in the Valid ranges list.
  final String ipCidrRange;

  /// The name associated with this subnetwork secondary range, used when adding an alias IP range to a VM instance. The name must be 1-63 characters long, and comply with RFC1035. The name must be unique within the subnetwork.
  final String rangeName;

  SubnetworkSecondaryRangeResponseComputeV1({
    required this.ipCidrRange,
    required this.rangeName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipCidrRange'] = ipCidrRange;
    map['rangeName'] = rangeName;
    return map;
  }

  factory SubnetworkSecondaryRangeResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return SubnetworkSecondaryRangeResponseComputeV1(
      ipCidrRange: map['ipCidrRange'] as String,
      rangeName: map['rangeName'] as String,
    );
  }
}
