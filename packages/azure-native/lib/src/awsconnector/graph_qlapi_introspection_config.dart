/// Property value
enum GraphQLApiIntrospectionConfig {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const GraphQLApiIntrospectionConfig(this.value);
  final String value;

  static GraphQLApiIntrospectionConfig fromValue(String value) {
    for (final item in GraphQLApiIntrospectionConfig.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GraphQLApiIntrospectionConfig value: $value');
  }
}

