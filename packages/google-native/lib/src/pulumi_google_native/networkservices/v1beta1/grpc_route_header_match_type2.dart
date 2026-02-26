/// Optional. Specifies how to match against the value of the header. If not specified, a default value of EXACT is used.
enum GrpcRouteHeaderMatchType2 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  exact("EXACT"),
  regularExpression("REGULAR_EXPRESSION");

  const GrpcRouteHeaderMatchType2(this.value);
  final String value;

  static GrpcRouteHeaderMatchType2 fromValue(String value) {
    for (final item in GrpcRouteHeaderMatchType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GrpcRouteHeaderMatchType2 value: $value');
  }
}
