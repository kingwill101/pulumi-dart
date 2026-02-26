enum RouterNatSubnetworkToNatSourceIpRangesToNatItem2 {
  allIpRanges("ALL_IP_RANGES"),
  listOfSecondaryIpRanges("LIST_OF_SECONDARY_IP_RANGES"),
  primaryIpRange("PRIMARY_IP_RANGE");

  const RouterNatSubnetworkToNatSourceIpRangesToNatItem2(this.value);
  final String value;

  static RouterNatSubnetworkToNatSourceIpRangesToNatItem2 fromValue(
      String value) {
    for (final item
        in RouterNatSubnetworkToNatSourceIpRangesToNatItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RouterNatSubnetworkToNatSourceIpRangesToNatItem2 value: $value');
  }
}
