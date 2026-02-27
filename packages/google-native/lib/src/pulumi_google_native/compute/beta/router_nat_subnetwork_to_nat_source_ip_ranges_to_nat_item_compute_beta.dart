enum RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeBeta {
  allIpRanges("ALL_IP_RANGES"),
  listOfSecondaryIpRanges("LIST_OF_SECONDARY_IP_RANGES"),
  primaryIpRange("PRIMARY_IP_RANGE");

  const RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeBeta(this.value);
  final String value;

  static RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeBeta fromValue(
      String value) {
    for (final item
        in RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeBeta value: $value');
  }
}
