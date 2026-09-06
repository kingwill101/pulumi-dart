import 'package:pulumi/pulumi.dart' as pulumi;

/// AuthenticationType to be used for connection. It is mutually exclusive with connectionString property.
enum Db2AuthenticationType implements pulumi.PulumiEnum<String> {
  basic("Basic");

  const Db2AuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static Db2AuthenticationType fromValue(String value) {
    for (final item in Db2AuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Db2AuthenticationType value: $value');
  }
}
