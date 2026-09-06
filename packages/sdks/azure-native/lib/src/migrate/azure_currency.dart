import 'package:pulumi/pulumi.dart' as pulumi;

/// Currency in which prices should be reported.
enum AzureCurrency implements pulumi.PulumiEnum<String> {
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

  const AzureCurrency(this.wireValue);
  @override
  final String wireValue;

  static AzureCurrency fromValue(String value) {
    for (final item in AzureCurrency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureCurrency value: $value');
  }
}
