enum RouterBgpAdvertisedGroupsItemComputeBeta {
  allSubnets("ALL_SUBNETS");

  const RouterBgpAdvertisedGroupsItemComputeBeta(this.value);
  final String value;

  static RouterBgpAdvertisedGroupsItemComputeBeta fromValue(String value) {
    for (final item in RouterBgpAdvertisedGroupsItemComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RouterBgpAdvertisedGroupsItemComputeBeta value: $value');
  }
}
