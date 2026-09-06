import 'package:pulumi/pulumi.dart' as pulumi;

/// The field ordering
enum MongoDbShardKeyOrder implements pulumi.PulumiEnum<String> {
  valueForward("Forward"),
  valueReverse("Reverse"),
  valueHashed("Hashed");

  const MongoDbShardKeyOrder(this.wireValue);
  @override
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
