/// SKU associated with the ledger
enum LedgerSku {
  valueStandard("Standard"),
  valueBasic("Basic"),
  valueUnknown("Unknown");

  const LedgerSku(this.wireValue);
  final String wireValue;

  static LedgerSku fromValue(String value) {
    for (final item in LedgerSku.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LedgerSku value: $value');
  }
}

