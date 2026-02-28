enum InternalRangeOverlapsItem {
  overlapUnspecified("OVERLAP_UNSPECIFIED"),
  overlapRouteRange("OVERLAP_ROUTE_RANGE"),
  overlapExistingSubnetRange("OVERLAP_EXISTING_SUBNET_RANGE");

  const InternalRangeOverlapsItem(this.value);
  final String value;

  static InternalRangeOverlapsItem fromValue(String value) {
    for (final item in InternalRangeOverlapsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InternalRangeOverlapsItem value: $value');
  }
}

