/// Currency to report prices in.
enum Currency {
  valueUnknown("Unknown"),
  valueUSD("USD"),
  valueDKK("DKK"),
  valueCAD("CAD"),
  valueIDR("IDR"),
  valueJPY("JPY"),
  valueKRW("KRW"),
  valueNZD("NZD"),
  valueNOK("NOK"),
  valueRUB("RUB"),
  valueSAR("SAR"),
  valueZAR("ZAR"),
  valueSEK("SEK"),
  valueTRY("TRY"),
  valueGBP("GBP"),
  valueMXN("MXN"),
  valueMYR("MYR"),
  valueINR("INR"),
  valueHKD("HKD"),
  valueBRL("BRL"),
  valueTWD("TWD"),
  valueEUR("EUR"),
  valueCHF("CHF"),
  valueARS("ARS"),
  valueAUD("AUD"),
  valueCNY("CNY");

  const Currency(this.wireValue);
  final String wireValue;

  static Currency fromValue(String value) {
    for (final item in Currency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Currency value: $value');
  }
}

