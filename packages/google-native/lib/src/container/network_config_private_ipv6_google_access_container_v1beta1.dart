/// The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4)
enum NetworkConfigPrivateIpv6GoogleAccessContainerV1beta1 {
  privateIpv6GoogleAccessUnspecified("PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED"),
  privateIpv6GoogleAccessDisabled("PRIVATE_IPV6_GOOGLE_ACCESS_DISABLED"),
  privateIpv6GoogleAccessToGoogle("PRIVATE_IPV6_GOOGLE_ACCESS_TO_GOOGLE"),
  privateIpv6GoogleAccessBidirectional(
    "PRIVATE_IPV6_GOOGLE_ACCESS_BIDIRECTIONAL",
  );

  const NetworkConfigPrivateIpv6GoogleAccessContainerV1beta1(this.value);
  final String value;

  static NetworkConfigPrivateIpv6GoogleAccessContainerV1beta1 fromValue(
    String value,
  ) {
    for (final item
        in NetworkConfigPrivateIpv6GoogleAccessContainerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NetworkConfigPrivateIpv6GoogleAccessContainerV1beta1 value: $value',
    );
  }
}
