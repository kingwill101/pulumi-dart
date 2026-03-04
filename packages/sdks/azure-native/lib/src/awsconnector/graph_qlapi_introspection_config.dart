/// Property value
enum GraphQLApiIntrospectionConfig {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const GraphQLApiIntrospectionConfig(this.wireValue);
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
