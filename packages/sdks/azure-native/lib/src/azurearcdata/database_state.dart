import 'package:pulumi/pulumi.dart' as pulumi;

/// State of the database.
enum DatabaseState implements pulumi.PulumiEnum<String> {
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
  @override
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
