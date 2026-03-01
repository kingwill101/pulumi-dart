/// Optional. Specifies how to match against the name. If not specified, a default value of "EXACT" is used.
enum GrpcRouteMethodMatchTypeNetworkservicesV1beta1 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  exact("EXACT"),
  regularExpression("REGULAR_EXPRESSION");

  const GrpcRouteMethodMatchTypeNetworkservicesV1beta1(this.value);
  final String value;

  static GrpcRouteMethodMatchTypeNetworkservicesV1beta1 fromValue(
    String value,
  ) {
    for (final item in GrpcRouteMethodMatchTypeNetworkservicesV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GrpcRouteMethodMatchTypeNetworkservicesV1beta1 value: $value',
    );
  }
}
