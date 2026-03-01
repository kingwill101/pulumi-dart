/// Give access for `Read`, `Write` and `ReadWrite` access level.
enum StateStoreResourceDefinitionMethods {
  read("Read"),
  write("Write"),
  readWrite("ReadWrite");

  const StateStoreResourceDefinitionMethods(this.value);
  final String value;

  static StateStoreResourceDefinitionMethods fromValue(String value) {
    for (final item in StateStoreResourceDefinitionMethods.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StateStoreResourceDefinitionMethods value: $value');
  }
}

