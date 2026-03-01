/// Network Fabric Controller SKU.
enum NfcSku {
  valueBasic("Basic"),
  valueStandard("Standard"),
  valueHighPerformance("HighPerformance");

  const NfcSku(this.value);
  final String value;

  static NfcSku fromValue(String value) {
    for (final item in NfcSku.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfcSku value: $value');
  }
}

