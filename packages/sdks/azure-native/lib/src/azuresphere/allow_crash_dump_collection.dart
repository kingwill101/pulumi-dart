/// Flag to define if the user allows for crash dump collection.
enum AllowCrashDumpCollection {
  enabled("Enabled"),
  disabled("Disabled");

  const AllowCrashDumpCollection(this.value);
  final String value;

  static AllowCrashDumpCollection fromValue(String value) {
    for (final item in AllowCrashDumpCollection.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllowCrashDumpCollection value: $value');
  }
}

