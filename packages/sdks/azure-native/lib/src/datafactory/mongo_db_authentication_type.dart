/// The authentication type to be used to connect to the MongoDB database.
enum MongoDbAuthenticationType {
  basic("Basic"),
  anonymous("Anonymous");

  const MongoDbAuthenticationType(this.wireValue);
  final String wireValue;

  static MongoDbAuthenticationType fromValue(String value) {
    for (final item in MongoDbAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MongoDbAuthenticationType value: $value');
  }
}
