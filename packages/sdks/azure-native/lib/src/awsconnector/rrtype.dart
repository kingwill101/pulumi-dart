/// Property value
enum RRType {
  a("A"),
  aAAA("AAAA"),
  cAA("CAA"),
  cNAME("CNAME"),
  dS("DS"),
  mX("MX"),
  nAPTR("NAPTR"),
  nS("NS"),
  pTR("PTR"),
  sOA("SOA"),
  sPF("SPF"),
  sRV("SRV"),
  tXT("TXT");

  const RRType(this.value);
  final String value;

  static RRType fromValue(String value) {
    for (final item in RRType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RRType value: $value');
  }
}

