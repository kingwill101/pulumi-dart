/// The authentication type to be used to connect to the MongoDB database.
enum MongoDbAuthenticationType {
  valueBasic("Basic"),
  valueAnonymous("Anonymous");

  const MongoDbAuthenticationType(this.value);
  final String value;

  static MongoDbAuthenticationType fromValue(String value) {
    for (final item in MongoDbAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MongoDbAuthenticationType value: $value');
  }
}

