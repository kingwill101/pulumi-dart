/// The type of the database. See https://cloud.google.com/datastore/docs/firestore-or-datastore for information about how to choose.
enum DatabaseTypeFirestoreV1 {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  firestoreNative("FIRESTORE_NATIVE"),
  datastoreMode("DATASTORE_MODE");

  const DatabaseTypeFirestoreV1(this.value);
  final String value;

  static DatabaseTypeFirestoreV1 fromValue(String value) {
    for (final item in DatabaseTypeFirestoreV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseTypeFirestoreV1 value: $value');
  }
}
