/// Give access for a Broker method (i.e., Connect, Subscribe, or Publish).
enum BrokerResourceDefinitionMethods {
  connect("Connect"),
  publish("Publish"),
  subscribe("Subscribe");

  const BrokerResourceDefinitionMethods(this.wireValue);
  final String wireValue;

  static BrokerResourceDefinitionMethods fromValue(String value) {
    for (final item in BrokerResourceDefinitionMethods.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BrokerResourceDefinitionMethods value: $value');
  }
}

