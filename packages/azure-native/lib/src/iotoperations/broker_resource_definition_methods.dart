/// Give access for a Broker method (i.e., Connect, Subscribe, or Publish).
enum BrokerResourceDefinitionMethods {
  connect("Connect"),
  publish("Publish"),
  subscribe("Subscribe");

  const BrokerResourceDefinitionMethods(this.value);
  final String value;

  static BrokerResourceDefinitionMethods fromValue(String value) {
    for (final item in BrokerResourceDefinitionMethods.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BrokerResourceDefinitionMethods value: $value');
  }
}

