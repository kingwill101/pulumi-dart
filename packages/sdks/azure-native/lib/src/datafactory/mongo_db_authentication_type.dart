import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication type to be used to connect to the MongoDB database.
enum MongoDbAuthenticationType implements pulumi.PulumiEnum<String> {
  basic("Basic"),
  anonymous("Anonymous");

  const MongoDbAuthenticationType(this.wireValue);
  @override
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
