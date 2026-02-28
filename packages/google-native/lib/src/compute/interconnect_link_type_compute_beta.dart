/// Type of link requested, which can take one of the following values: - LINK_TYPE_ETHERNET_10G_LR: A 10G Ethernet with LR optics - LINK_TYPE_ETHERNET_100G_LR: A 100G Ethernet with LR optics. Note that this field indicates the speed of each of the links in the bundle, not the speed of the entire bundle.
enum InterconnectLinkTypeComputeBeta {
  linkTypeEthernet100gLr("LINK_TYPE_ETHERNET_100G_LR"),
  linkTypeEthernet10gLr("LINK_TYPE_ETHERNET_10G_LR");

  const InterconnectLinkTypeComputeBeta(this.value);
  final String value;

  static InterconnectLinkTypeComputeBeta fromValue(String value) {
    for (final item in InterconnectLinkTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InterconnectLinkTypeComputeBeta value: $value');
  }
}
