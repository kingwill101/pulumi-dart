/// Property value
enum GraphQLApiType {
  gRAPHQL("GRAPHQL"),
  mERGED("MERGED");

  const GraphQLApiType(this.wireValue);
  final String wireValue;

  static GraphQLApiType fromValue(String value) {
    for (final item in GraphQLApiType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GraphQLApiType value: $value');
  }
}
