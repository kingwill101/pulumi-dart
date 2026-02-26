enum InternalRangeOverlapsItem2 {
  overlapUnspecified("OVERLAP_UNSPECIFIED"),
  overlapRouteRange("OVERLAP_ROUTE_RANGE"),
  overlapExistingSubnetRange("OVERLAP_EXISTING_SUBNET_RANGE");

  const InternalRangeOverlapsItem2(this.value);
  final String value;

  static InternalRangeOverlapsItem2 fromValue(String value) {
    for (final item in InternalRangeOverlapsItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InternalRangeOverlapsItem2 value: $value');
  }
}
