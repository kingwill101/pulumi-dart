/// The endpoint type of this address, which should be VM or NETLB. This is used for deciding which type of endpoint this address can be used after the external IPv6 address reservation.
enum AddressIpv6EndpointType2 {
  netlb("NETLB"),
  vm("VM");

  const AddressIpv6EndpointType2(this.value);
  final String value;

  static AddressIpv6EndpointType2 fromValue(String value) {
    for (final item in AddressIpv6EndpointType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressIpv6EndpointType2 value: $value');
  }
}
