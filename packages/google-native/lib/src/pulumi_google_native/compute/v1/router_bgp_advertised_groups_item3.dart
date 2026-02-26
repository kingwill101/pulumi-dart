enum RouterBgpAdvertisedGroupsItem3 {
  allSubnets("ALL_SUBNETS");

  const RouterBgpAdvertisedGroupsItem3(this.value);
  final String value;

  static RouterBgpAdvertisedGroupsItem3 fromValue(String value) {
    for (final item in RouterBgpAdvertisedGroupsItem3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpAdvertisedGroupsItem3 value: $value');
  }
}
