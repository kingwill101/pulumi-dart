/// The base relative to which 'offset' is measured. Possible values are: - IPV4: Points to the beginning of the IPv4 header. - IPV6: Points to the beginning of the IPv6 header. - TCP: Points to the beginning of the TCP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments. - UDP: Points to the beginning of the UDP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments. required
enum SecurityPolicyUserDefinedFieldBaseComputeV1 {
  ipv4("IPV4"),
  ipv6("IPV6"),
  tcp("TCP"),
  udp("UDP");

  const SecurityPolicyUserDefinedFieldBaseComputeV1(this.value);
  final String value;

  static SecurityPolicyUserDefinedFieldBaseComputeV1 fromValue(String value) {
    for (final item in SecurityPolicyUserDefinedFieldBaseComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyUserDefinedFieldBaseComputeV1 value: $value');
  }
}
