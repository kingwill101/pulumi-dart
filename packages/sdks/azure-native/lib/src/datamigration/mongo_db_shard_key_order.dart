/// The field ordering
enum MongoDbShardKeyOrder {
  valueForward("Forward"),
  valueReverse("Reverse"),
  valueHashed("Hashed");

  const MongoDbShardKeyOrder(this.wireValue);
  final String wireValue;

  static MongoDbShardKeyOrder fromValue(String value) {
    for (final item in MongoDbShardKeyOrder.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MongoDbShardKeyOrder value: $value');
  }
}
