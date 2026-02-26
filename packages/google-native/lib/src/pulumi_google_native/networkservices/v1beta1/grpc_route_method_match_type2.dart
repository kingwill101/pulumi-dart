/// Optional. Specifies how to match against the name. If not specified, a default value of "EXACT" is used.
enum GrpcRouteMethodMatchType2 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  exact("EXACT"),
  regularExpression("REGULAR_EXPRESSION");

  const GrpcRouteMethodMatchType2(this.value);
  final String value;

  static GrpcRouteMethodMatchType2 fromValue(String value) {
    for (final item in GrpcRouteMethodMatchType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GrpcRouteMethodMatchType2 value: $value');
  }
}
