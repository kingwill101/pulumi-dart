enum RouterBgpPeerAdvertisedGroupsItem2 {
  allSubnets("ALL_SUBNETS");

  const RouterBgpPeerAdvertisedGroupsItem2(this.value);
  final String value;

  static RouterBgpPeerAdvertisedGroupsItem2 fromValue(String value) {
    for (final item in RouterBgpPeerAdvertisedGroupsItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RouterBgpPeerAdvertisedGroupsItem2 value: $value');
  }
}
