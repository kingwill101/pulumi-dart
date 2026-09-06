import 'package:pulumi/pulumi.dart' as pulumi;

/// The default consistency level and configuration settings of the Cosmos DB account.
enum DefaultConsistencyLevel implements pulumi.PulumiEnum<String> {
  valueEventual("Eventual"),
  valueSession("Session"),
  valueBoundedStaleness("BoundedStaleness"),
  valueStrong("Strong"),
  valueConsistentPrefix("ConsistentPrefix");

  const DefaultConsistencyLevel(this.wireValue);
  @override
  final String wireValue;

  static DefaultConsistencyLevel fromValue(String value) {
    for (final item in DefaultConsistencyLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultConsistencyLevel value: $value');
  }
}
