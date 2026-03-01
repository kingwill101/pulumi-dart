/// LedgerRole associated with the Security Principal of Ledger
enum LedgerRoleName {
  valueReader("Reader"),
  valueContributor("Contributor"),
  valueAdministrator("Administrator");

  const LedgerRoleName(this.value);
  final String value;

  static LedgerRoleName fromValue(String value) {
    for (final item in LedgerRoleName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LedgerRoleName value: $value');
  }
}

