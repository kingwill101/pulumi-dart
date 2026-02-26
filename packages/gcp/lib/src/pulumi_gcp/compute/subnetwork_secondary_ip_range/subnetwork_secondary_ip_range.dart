// ignore_for_file: unused_element, unnecessary_cast

class SubnetworkSecondaryIpRange {
  /// The range of IP addresses belonging to this subnetwork secondary
  /// range. Provide this property when you create the subnetwork.
  /// Ranges must be unique and non-overlapping with all primary and
  /// secondary IP ranges within a network. Only IPv4 is supported.
  /// Field is optional when <span pulumi-lang-nodejs="`reservedInternalRange`" pulumi-lang-dotnet="`ReservedInternalRange`" pulumi-lang-go="`reservedInternalRange`" pulumi-lang-python="`reserved_internal_range`" pulumi-lang-yaml="`reservedInternalRange`" pulumi-lang-java="`reservedInternalRange`">`reserved_internal_range`</span> is defined, otherwise required.
  final String? ipCidrRange;

  /// The name associated with this subnetwork secondary range, used
  /// when adding an alias IP range to a VM instance. The name must
  /// be 1-63 characters long, and comply with RFC1035. The name
  /// must be unique within the subnetwork.
  final String rangeName;

  /// The ID of the reserved internal range. Must be prefixed with `networkconnectivity.googleapis.com`
  /// E.g. `networkconnectivity.googleapis.com/projects/{project}/locations/global/internalRanges/{rangeId}`
  final String? reservedInternalRange;

  SubnetworkSecondaryIpRange({
    this.ipCidrRange,
    required this.rangeName,
    this.reservedInternalRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipCidrRangeValue = ipCidrRange;
    if (ipCidrRangeValue != null) {
      map['ipCidrRange'] = ipCidrRangeValue;
    }
    map['rangeName'] = rangeName;
    final reservedInternalRangeValue = reservedInternalRange;
    if (reservedInternalRangeValue != null) {
      map['reservedInternalRange'] = reservedInternalRangeValue;
    }
    return map;
  }

  factory SubnetworkSecondaryIpRange.fromMap(Map<String, dynamic> map) {
    return SubnetworkSecondaryIpRange(
      ipCidrRange:
          map['ipCidrRange'] == null ? null : map['ipCidrRange'] as String,
      rangeName: map['rangeName'] as String,
      reservedInternalRange: map['reservedInternalRange'] == null
          ? null
          : map['reservedInternalRange'] as String,
    );
  }
}
