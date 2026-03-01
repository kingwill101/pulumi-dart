/// SKU associated with the ledger
enum LedgerSku {
  valueStandard("Standard"),
  valueBasic("Basic"),
  valueUnknown("Unknown");

  const LedgerSku(this.value);
  final String value;

  static LedgerSku fromValue(String value) {
    for (final item in LedgerSku.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LedgerSku value: $value');
  }
}

