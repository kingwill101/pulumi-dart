/// Property value
enum GraphQLApiVisibility {
  gLOBAL("GLOBAL"),
  pRIVATE("PRIVATE");

  const GraphQLApiVisibility(this.value);
  final String value;

  static GraphQLApiVisibility fromValue(String value) {
    for (final item in GraphQLApiVisibility.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GraphQLApiVisibility value: $value');
  }
}

