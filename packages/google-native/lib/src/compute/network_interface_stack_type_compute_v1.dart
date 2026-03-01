/// The stack type for this network interface. To assign only IPv4 addresses, use IPV4_ONLY. To assign both IPv4 and IPv6 addresses, use IPV4_IPV6. If not specified, IPV4_ONLY is used. This field can be both set at instance creation and update network interface operations.
enum NetworkInterfaceStackTypeComputeV1 {
  ipv4Ipv6("IPV4_IPV6"),
  ipv4Only("IPV4_ONLY");

  const NetworkInterfaceStackTypeComputeV1(this.value);
  final String value;

  static NetworkInterfaceStackTypeComputeV1 fromValue(String value) {
    for (final item in NetworkInterfaceStackTypeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NetworkInterfaceStackTypeComputeV1 value: $value',
    );
  }
}
