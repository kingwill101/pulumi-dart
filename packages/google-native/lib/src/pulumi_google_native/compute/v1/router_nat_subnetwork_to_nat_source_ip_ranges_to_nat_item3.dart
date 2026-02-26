enum RouterNatSubnetworkToNatSourceIpRangesToNatItem3 {
  allIpRanges("ALL_IP_RANGES"),
  listOfSecondaryIpRanges("LIST_OF_SECONDARY_IP_RANGES"),
  primaryIpRange("PRIMARY_IP_RANGE");

  const RouterNatSubnetworkToNatSourceIpRangesToNatItem3(this.value);
  final String value;

  static RouterNatSubnetworkToNatSourceIpRangesToNatItem3 fromValue(
      String value) {
    for (final item
        in RouterNatSubnetworkToNatSourceIpRangesToNatItem3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RouterNatSubnetworkToNatSourceIpRangesToNatItem3 value: $value');
  }
}
