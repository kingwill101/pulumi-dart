/// The base relative to which 'offset' is measured. Possible values are: - IPV4: Points to the beginning of the IPv4 header. - IPV6: Points to the beginning of the IPv6 header. - TCP: Points to the beginning of the TCP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments. - UDP: Points to the beginning of the UDP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments. required
enum SecurityPolicyUserDefinedFieldBaseComputeBeta {
  ipv4("IPV4"),
  ipv6("IPV6"),
  tcp("TCP"),
  udp("UDP");

  const SecurityPolicyUserDefinedFieldBaseComputeBeta(this.value);
  final String value;

  static SecurityPolicyUserDefinedFieldBaseComputeBeta fromValue(String value) {
    for (final item in SecurityPolicyUserDefinedFieldBaseComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SecurityPolicyUserDefinedFieldBaseComputeBeta value: $value',
    );
  }
}
