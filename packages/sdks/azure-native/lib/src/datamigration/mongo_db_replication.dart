/// Describes how changes will be replicated from the source to the target. The default is OneTime.
enum MongoDbReplication {
  valueDisabled("Disabled"),
  valueOneTime("OneTime"),
  valueContinuous("Continuous");

  const MongoDbReplication(this.value);
  final String value;

  static MongoDbReplication fromValue(String value) {
    for (final item in MongoDbReplication.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MongoDbReplication value: $value');
  }
}

