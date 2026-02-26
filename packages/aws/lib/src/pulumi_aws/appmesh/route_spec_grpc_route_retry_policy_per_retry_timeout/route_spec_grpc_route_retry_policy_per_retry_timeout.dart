// ignore_for_file: unused_element, unnecessary_cast

class RouteSpecGrpcRouteRetryPolicyPerRetryTimeout {
  /// Retry unit. Valid values: <span pulumi-lang-nodejs="`ms`" pulumi-lang-dotnet="`Ms`" pulumi-lang-go="`ms`" pulumi-lang-python="`ms`" pulumi-lang-yaml="`ms`" pulumi-lang-java="`ms`">`ms`</span>, <span pulumi-lang-nodejs="`s`" pulumi-lang-dotnet="`S`" pulumi-lang-go="`s`" pulumi-lang-python="`s`" pulumi-lang-yaml="`s`" pulumi-lang-java="`s`">`s`</span>.
  final String unit;

  /// Retry value.
  final int value;

  RouteSpecGrpcRouteRetryPolicyPerRetryTimeout({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory RouteSpecGrpcRouteRetryPolicyPerRetryTimeout.fromMap(
      Map<String, dynamic> map) {
    return RouteSpecGrpcRouteRetryPolicyPerRetryTimeout(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
