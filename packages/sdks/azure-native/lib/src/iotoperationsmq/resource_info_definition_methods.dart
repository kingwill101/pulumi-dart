import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of action that the clients can perform on the broker: Connect, Publish or Subscribe.
enum ResourceInfoDefinitionMethods implements pulumi.PulumiEnum<String> {
  connect("Connect"),
  publish("Publish"),
  subscribe("Subscribe");

  const ResourceInfoDefinitionMethods(this.wireValue);
  @override
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
