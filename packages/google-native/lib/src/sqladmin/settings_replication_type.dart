/// The type of replication this instance uses. This can be either `ASYNCHRONOUS` or `SYNCHRONOUS`. (Deprecated) This property was only applicable to First Generation instances.
enum SettingsReplicationType {
  sqlReplicationTypeUnspecified("SQL_REPLICATION_TYPE_UNSPECIFIED"),
  synchronous("SYNCHRONOUS"),
  asynchronous("ASYNCHRONOUS");

  const SettingsReplicationType(this.value);
  final String value;

  static SettingsReplicationType fromValue(String value) {
    for (final item in SettingsReplicationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingsReplicationType value: $value');
  }
}

