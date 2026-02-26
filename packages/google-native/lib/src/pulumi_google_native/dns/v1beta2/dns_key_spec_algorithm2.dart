/// String mnemonic specifying the DNSSEC algorithm of this key.
enum DnsKeySpecAlgorithm2 {
  rsasha1("rsasha1"),
  rsasha256("rsasha256"),
  rsasha512("rsasha512"),
  ecdsap256sha256("ecdsap256sha256"),
  ecdsap384sha384("ecdsap384sha384");

  const DnsKeySpecAlgorithm2(this.value);
  final String value;

  static DnsKeySpecAlgorithm2 fromValue(String value) {
    for (final item in DnsKeySpecAlgorithm2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DnsKeySpecAlgorithm2 value: $value');
  }
}
