/// Property value
enum GraphQLApiVisibility {
  gLOBAL("GLOBAL"),
  pRIVATE("PRIVATE");

  const GraphQLApiVisibility(this.wireValue);
  final String wireValue;

  static GraphQLApiVisibility fromValue(String value) {
    for (final item in GraphQLApiVisibility.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GraphQLApiVisibility value: $value');
  }
}

