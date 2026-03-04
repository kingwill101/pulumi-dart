/// State of the database.
enum DatabaseState {
  valueOnline("Online"),
  valueRestoring("Restoring"),
  valueRecovering("Recovering"),
  valueRecoveryPending("RecoveryPending"),
  valueSuspect("Suspect"),
  valueEmergency("Emergency"),
  valueOffline("Offline"),
  valueCopying("Copying"),
  valueOfflineSecondary("OfflineSecondary");

  const DatabaseState(this.wireValue);
  final String wireValue;

  static DatabaseState fromValue(String value) {
    for (final item in DatabaseState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseState value: $value');
  }
}
