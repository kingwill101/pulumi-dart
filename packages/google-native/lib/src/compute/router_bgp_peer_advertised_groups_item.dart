enum RouterBgpPeerAdvertisedGroupsItem {
  allPeerVpcSubnets("ALL_PEER_VPC_SUBNETS"),
  allSubnets("ALL_SUBNETS"),
  allVpcSubnets("ALL_VPC_SUBNETS");

  const RouterBgpPeerAdvertisedGroupsItem(this.value);
  final String value;

  static RouterBgpPeerAdvertisedGroupsItem fromValue(String value) {
    for (final item in RouterBgpPeerAdvertisedGroupsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RouterBgpPeerAdvertisedGroupsItem value: $value',
    );
  }
}
