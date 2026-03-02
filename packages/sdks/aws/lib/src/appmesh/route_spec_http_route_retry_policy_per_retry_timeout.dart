// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteSpecHttpRouteRetryPolicyPerRetryTimeout {
  /// Retry unit. Valid values: `ms`, `s`.
  final pulumi.Input<String> unit;
  /// Retry value.
  final pulumi.Input<int> value;

  /// Creates a new [RouteSpecHttpRouteRetryPolicyPerRetryTimeout].
  /// [unit] Retry unit. Valid values: `ms`, `s`.
  /// [value] Retry value.
  RouteSpecHttpRouteRetryPolicyPerRetryTimeout({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory RouteSpecHttpRouteRetryPolicyPerRetryTimeout.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttpRouteRetryPolicyPerRetryTimeout(
      unit: (map['unit'] as String).input(),
      value: (map['value'] as int).input(),
    );
  }
}

