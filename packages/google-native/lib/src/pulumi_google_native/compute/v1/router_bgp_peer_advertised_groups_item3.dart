enum RouterBgpPeerAdvertisedGroupsItem3 {
  allSubnets("ALL_SUBNETS");

  const RouterBgpPeerAdvertisedGroupsItem3(this.value);
  final String value;

  static RouterBgpPeerAdvertisedGroupsItem3 fromValue(String value) {
    for (final item in RouterBgpPeerAdvertisedGroupsItem3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RouterBgpPeerAdvertisedGroupsItem3 value: $value');
  }
}
