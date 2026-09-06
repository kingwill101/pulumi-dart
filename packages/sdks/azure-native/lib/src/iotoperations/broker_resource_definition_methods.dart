import 'package:pulumi/pulumi.dart' as pulumi;

/// Give access for a Broker method (i.e., Connect, Subscribe, or Publish).
enum BrokerResourceDefinitionMethods implements pulumi.PulumiEnum<String> {
  connect("Connect"),
  publish("Publish"),
  subscribe("Subscribe");

  const BrokerResourceDefinitionMethods(this.wireValue);
  @override
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
