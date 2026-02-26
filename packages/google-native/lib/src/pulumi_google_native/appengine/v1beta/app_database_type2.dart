/// The type of the Cloud Firestore or Cloud Datastore database associated with this application.
enum AppDatabaseType2 {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  cloudDatastore("CLOUD_DATASTORE"),
  cloudFirestore("CLOUD_FIRESTORE"),
  cloudDatastoreCompatibility("CLOUD_DATASTORE_COMPATIBILITY");

  const AppDatabaseType2(this.value);
  final String value;

  static AppDatabaseType2 fromValue(String value) {
    for (final item in AppDatabaseType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppDatabaseType2 value: $value');
  }
}
