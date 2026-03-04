/// LedgerRole associated with the Security Principal of Ledger
enum LedgerRoleName {
  valueReader("Reader"),
  valueContributor("Contributor"),
  valueAdministrator("Administrator");

  const LedgerRoleName(this.wireValue);
  final String wireValue;

  static LedgerRoleName fromValue(String value) {
    for (final item in LedgerRoleName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LedgerRoleName value: $value');
  }
}
