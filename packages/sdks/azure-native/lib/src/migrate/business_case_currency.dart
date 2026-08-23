/// Business case Currency.
enum BusinessCaseCurrency {
  unknown("Unknown"),
  uSD("USD"),
  dKK("DKK"),
  cAD("CAD"),
  iDR("IDR"),
  jPY("JPY"),
  kRW("KRW"),
  nZD("NZD"),
  nOK("NOK"),
  rUB("RUB"),
  sAR("SAR"),
  zAR("ZAR"),
  sEK("SEK"),
  tRY("TRY"),
  gBP("GBP"),
  mXN("MXN"),
  mYR("MYR"),
  iNR("INR"),
  hKD("HKD"),
  bRL("BRL"),
  tWD("TWD"),
  eUR("EUR"),
  cHF("CHF"),
  aRS("ARS"),
  aUD("AUD"),
  cNY("CNY");

  const BusinessCaseCurrency(this.wireValue);
  final String wireValue;

  static BusinessCaseCurrency fromValue(String value) {
    for (final item in BusinessCaseCurrency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BusinessCaseCurrency value: $value');
  }
}
