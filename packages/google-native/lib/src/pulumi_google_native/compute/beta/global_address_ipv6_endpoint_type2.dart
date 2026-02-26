/// The endpoint type of this address, which should be VM or NETLB. This is used for deciding which type of endpoint this address can be used after the external IPv6 address reservation.
enum GlobalAddressIpv6EndpointType2 {
  netlb("NETLB"),
  vm("VM");

  const GlobalAddressIpv6EndpointType2(this.value);
  final String value;

  static GlobalAddressIpv6EndpointType2 fromValue(String value) {
    for (final item in GlobalAddressIpv6EndpointType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalAddressIpv6EndpointType2 value: $value');
  }
}
