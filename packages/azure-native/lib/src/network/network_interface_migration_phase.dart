/// Migration phase of Network Interface resource.
enum NetworkInterfaceMigrationPhase {
  valueNone("None"),
  valuePrepare("Prepare"),
  valueCommit("Commit"),
  valueAbort("Abort"),
  valueCommitted("Committed");

  const NetworkInterfaceMigrationPhase(this.value);
  final String value;

  static NetworkInterfaceMigrationPhase fromValue(String value) {
    for (final item in NetworkInterfaceMigrationPhase.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInterfaceMigrationPhase value: $value');
  }
}

