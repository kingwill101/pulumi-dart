/// Optional. Specifies how to match against the name. If not specified, a default value of "EXACT" is used.
enum GrpcRouteMethodMatchType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  exact("EXACT"),
  regularExpression("REGULAR_EXPRESSION");

  const GrpcRouteMethodMatchType(this.value);
  final String value;

  static GrpcRouteMethodMatchType fromValue(String value) {
    for (final item in GrpcRouteMethodMatchType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GrpcRouteMethodMatchType value: $value');
  }
}
