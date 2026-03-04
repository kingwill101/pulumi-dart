/// Network Fabric Controller SKU.
enum NfcSku {
  valueBasic("Basic"),
  valueStandard("Standard"),
  valueHighPerformance("HighPerformance");

  const NfcSku(this.wireValue);
  final String wireValue;

  static NfcSku fromValue(String value) {
    for (final item in NfcSku.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfcSku value: $value');
  }
}
