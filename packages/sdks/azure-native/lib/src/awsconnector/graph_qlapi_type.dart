/// Property value
enum GraphQLApiType {
  gRAPHQL("GRAPHQL"),
  mERGED("MERGED");

  const GraphQLApiType(this.value);
  final String value;

  static GraphQLApiType fromValue(String value) {
    for (final item in GraphQLApiType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GraphQLApiType value: $value');
  }
}

