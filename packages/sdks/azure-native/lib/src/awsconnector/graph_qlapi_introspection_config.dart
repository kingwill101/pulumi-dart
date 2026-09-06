import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum GraphQLApiIntrospectionConfig implements pulumi.PulumiEnum<String> {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const GraphQLApiIntrospectionConfig(this.wireValue);
  @override
  final String wireValue;

  static GraphQLApiIntrospectionConfig fromValue(String value) {
    for (final item in GraphQLApiIntrospectionConfig.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GraphQLApiIntrospectionConfig value: $value');
  }
}
