/// Flag to define if the user allows for crash dump collection.
enum AllowCrashDumpCollection {
  enabled("Enabled"),
  disabled("Disabled");

  const AllowCrashDumpCollection(this.wireValue);
  final String wireValue;

  static AllowCrashDumpCollection fromValue(String value) {
    for (final item in AllowCrashDumpCollection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllowCrashDumpCollection value: $value');
  }
}

