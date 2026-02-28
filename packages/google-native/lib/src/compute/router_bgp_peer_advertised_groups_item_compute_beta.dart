enum RouterBgpPeerAdvertisedGroupsItemComputeBeta {
  allSubnets("ALL_SUBNETS");

  const RouterBgpPeerAdvertisedGroupsItemComputeBeta(this.value);
  final String value;

  static RouterBgpPeerAdvertisedGroupsItemComputeBeta fromValue(String value) {
    for (final item in RouterBgpPeerAdvertisedGroupsItemComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpPeerAdvertisedGroupsItemComputeBeta value: $value');
  }
}

