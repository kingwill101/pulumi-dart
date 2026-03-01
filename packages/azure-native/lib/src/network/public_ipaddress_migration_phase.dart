/// Migration phase of Public IP Address.
enum PublicIPAddressMigrationPhase {
  valueNone("None"),
  valuePrepare("Prepare"),
  valueCommit("Commit"),
  valueAbort("Abort"),
  valueCommitted("Committed");

  const PublicIPAddressMigrationPhase(this.value);
  final String value;

  static PublicIPAddressMigrationPhase fromValue(String value) {
    for (final item in PublicIPAddressMigrationPhase.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIPAddressMigrationPhase value: $value');
  }
}

