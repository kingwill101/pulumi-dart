/// The field ordering
enum MongoDbShardKeyOrder {
  valueForward("Forward"),
  valueReverse("Reverse"),
  valueHashed("Hashed");

  const MongoDbShardKeyOrder(this.value);
  final String value;

  static MongoDbShardKeyOrder fromValue(String value) {
    for (final item in MongoDbShardKeyOrder.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MongoDbShardKeyOrder value: $value');
  }
}

