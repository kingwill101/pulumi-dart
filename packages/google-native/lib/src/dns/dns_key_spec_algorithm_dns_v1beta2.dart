/// String mnemonic specifying the DNSSEC algorithm of this key.
enum DnsKeySpecAlgorithmDnsV1beta2 {
  rsasha1("rsasha1"),
  rsasha256("rsasha256"),
  rsasha512("rsasha512"),
  ecdsap256sha256("ecdsap256sha256"),
  ecdsap384sha384("ecdsap384sha384");

  const DnsKeySpecAlgorithmDnsV1beta2(this.value);
  final String value;

  static DnsKeySpecAlgorithmDnsV1beta2 fromValue(String value) {
    for (final item in DnsKeySpecAlgorithmDnsV1beta2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DnsKeySpecAlgorithmDnsV1beta2 value: $value');
  }
}
