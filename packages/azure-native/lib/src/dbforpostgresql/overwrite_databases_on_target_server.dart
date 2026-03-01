/// Indicates if databases on the target server can be overwritten when already present. If set to 'False', when the migration workflow detects that the database already exists on the target server, it will wait for a confirmation.
enum OverwriteDatabasesOnTargetServer {
  true_("True"),
  false_("False");

  const OverwriteDatabasesOnTargetServer(this.value);
  final String value;

  static OverwriteDatabasesOnTargetServer fromValue(String value) {
    for (final item in OverwriteDatabasesOnTargetServer.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OverwriteDatabasesOnTargetServer value: $value');
  }
}

