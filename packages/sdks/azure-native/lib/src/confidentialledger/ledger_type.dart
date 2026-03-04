/// Type of Confidential Ledger
enum LedgerType {
  valueUnknown("Unknown"),
  valuePublic("Public"),
  valuePrivate("Private");

  const LedgerType(this.wireValue);
  final String wireValue;

  static LedgerType fromValue(String value) {
    for (final item in LedgerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LedgerType value: $value');
  }
}
