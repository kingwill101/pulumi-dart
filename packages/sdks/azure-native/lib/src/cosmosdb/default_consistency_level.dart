/// The default consistency level and configuration settings of the Cosmos DB account.
enum DefaultConsistencyLevel {
  valueEventual("Eventual"),
  valueSession("Session"),
  valueBoundedStaleness("BoundedStaleness"),
  valueStrong("Strong"),
  valueConsistentPrefix("ConsistentPrefix");

  const DefaultConsistencyLevel(this.value);
  final String value;

  static DefaultConsistencyLevel fromValue(String value) {
    for (final item in DefaultConsistencyLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultConsistencyLevel value: $value');
  }
}

