/// Remote support access level.
enum RemoteSupportAccessLevel {
  none("None"),
  diagnostics("Diagnostics"),
  diagnosticsAndRepair("DiagnosticsAndRepair");

  const RemoteSupportAccessLevel(this.value);
  final String value;

  static RemoteSupportAccessLevel fromValue(String value) {
    for (final item in RemoteSupportAccessLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RemoteSupportAccessLevel value: $value');
  }
}

