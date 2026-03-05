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

  const RRType(this.wireValue);
  final String wireValue;

  static RRType fromValue(String value) {
    for (final item in RRType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RRType value: $value');
  }
}

