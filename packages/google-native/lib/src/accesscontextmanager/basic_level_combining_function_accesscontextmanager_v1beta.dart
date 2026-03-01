/// How the `conditions` list should be combined to determine if a request is granted this `AccessLevel`. If AND is used, each `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. If OR is used, at least one `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. Default behavior is AND.
enum BasicLevelCombiningFunctionAccesscontextmanagerV1beta {
  and("AND"),
  or("OR");

  const BasicLevelCombiningFunctionAccesscontextmanagerV1beta(this.value);
  final String value;

  static BasicLevelCombiningFunctionAccesscontextmanagerV1beta fromValue(
    String value,
  ) {
    for (final item
        in BasicLevelCombiningFunctionAccesscontextmanagerV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown BasicLevelCombiningFunctionAccesscontextmanagerV1beta value: $value',
    );
  }
}
