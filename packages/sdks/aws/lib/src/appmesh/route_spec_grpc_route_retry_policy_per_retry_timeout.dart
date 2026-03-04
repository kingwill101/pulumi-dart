// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteSpecGrpcRouteRetryPolicyPerRetryTimeout {
  /// Retry unit. Valid values: `ms`, `s`.
  final pulumi.Input<String> unit;

  /// Retry value.
  final pulumi.Input<int> value;

  /// Creates a new [RouteSpecGrpcRouteRetryPolicyPerRetryTimeout].
  /// [unit] Retry unit. Valid values: `ms`, `s`.
  /// [value] Retry value.
  RouteSpecGrpcRouteRetryPolicyPerRetryTimeout({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'unit': unit, 'value': value};
  }

  factory RouteSpecGrpcRouteRetryPolicyPerRetryTimeout.fromMap(
    Map<String, dynamic> map,
  ) {
    return RouteSpecGrpcRouteRetryPolicyPerRetryTimeout(
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: pulumi.Input.fromValue(map['value'] as int),
    );
  }
}
