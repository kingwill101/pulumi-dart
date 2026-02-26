enum RouterBgpAdvertisedGroupsItem2 {
  allSubnets("ALL_SUBNETS");

  const RouterBgpAdvertisedGroupsItem2(this.value);
  final String value;

  static RouterBgpAdvertisedGroupsItem2 fromValue(String value) {
    for (final item in RouterBgpAdvertisedGroupsItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpAdvertisedGroupsItem2 value: $value');
  }
}
