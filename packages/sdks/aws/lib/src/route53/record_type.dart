enum RecordType {
  valueA("A"),
  valueAAAA("AAAA"),
  valueCNAME("CNAME"),
  valueCAA("CAA"),
  valueMX("MX"),
  valueNAPTR("NAPTR"),
  valueNS("NS"),
  valuePTR("PTR"),
  valueSOA("SOA"),
  valueSPF("SPF"),
  valueSRV("SRV"),
  valueTXT("TXT");

  const RecordType(this.wireValue);
  final String wireValue;

  static RecordType fromValue(String value) {
    for (final item in RecordType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecordType value: $value');
  }
}

