/// The type of replication this instance uses. This can be either `ASYNCHRONOUS` or `SYNCHRONOUS`. (Deprecated) This property was only applicable to First Generation instances.
enum SettingsReplicationType2 {
  sqlReplicationTypeUnspecified("SQL_REPLICATION_TYPE_UNSPECIFIED"),
  synchronous("SYNCHRONOUS"),
  asynchronous("ASYNCHRONOUS");

  const SettingsReplicationType2(this.value);
  final String value;

  static SettingsReplicationType2 fromValue(String value) {
    for (final item in SettingsReplicationType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingsReplicationType2 value: $value');
  }
}
