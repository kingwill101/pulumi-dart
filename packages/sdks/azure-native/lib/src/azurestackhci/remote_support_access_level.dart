/// Remote support access level.
enum RemoteSupportAccessLevel {
  none("None"),
  diagnostics("Diagnostics"),
  diagnosticsAndRepair("DiagnosticsAndRepair");

  const RemoteSupportAccessLevel(this.wireValue);
  final String wireValue;

  static RemoteSupportAccessLevel fromValue(String value) {
    for (final item in RemoteSupportAccessLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RemoteSupportAccessLevel value: $value');
  }
}
