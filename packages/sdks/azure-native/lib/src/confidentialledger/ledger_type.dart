/// Type of Confidential Ledger
enum LedgerType {
  valueUnknown("Unknown"),
  valuePublic("Public"),
  valuePrivate("Private");

  const LedgerType(this.value);
  final String value;

  static LedgerType fromValue(String value) {
    for (final item in LedgerType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LedgerType value: $value');
  }
}

