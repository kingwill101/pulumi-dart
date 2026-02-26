/// The type of the database. See https://cloud.google.com/datastore/docs/firestore-or-datastore for information about how to choose.
enum DatabaseType4 {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  firestoreNative("FIRESTORE_NATIVE"),
  datastoreMode("DATASTORE_MODE");

  const DatabaseType4(this.value);
  final String value;

  static DatabaseType4 fromValue(String value) {
    for (final item in DatabaseType4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseType4 value: $value');
  }
}
