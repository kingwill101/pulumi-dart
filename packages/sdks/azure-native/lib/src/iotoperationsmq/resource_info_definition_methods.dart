/// The type of action that the clients can perform on the broker: Connect, Publish or Subscribe.
enum ResourceInfoDefinitionMethods {
  connect("Connect"),
  publish("Publish"),
  subscribe("Subscribe");

  const ResourceInfoDefinitionMethods(this.wireValue);
  final String wireValue;

  static ResourceInfoDefinitionMethods fromValue(String value) {
    for (final item in ResourceInfoDefinitionMethods.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceInfoDefinitionMethods value: $value');
  }
}

