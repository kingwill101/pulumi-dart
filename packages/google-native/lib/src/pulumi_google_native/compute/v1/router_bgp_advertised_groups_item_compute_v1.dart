enum RouterBgpAdvertisedGroupsItemComputeV1 {
  allSubnets("ALL_SUBNETS");

  const RouterBgpAdvertisedGroupsItemComputeV1(this.value);
  final String value;

  static RouterBgpAdvertisedGroupsItemComputeV1 fromValue(String value) {
    for (final item in RouterBgpAdvertisedGroupsItemComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RouterBgpAdvertisedGroupsItemComputeV1 value: $value');
  }
}
