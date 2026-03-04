// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout {
  final pulumi.Input<String> unit;
  final pulumi.Input<int> value;

  /// Creates a new [GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout].
  /// [unit] Required.
  /// [value] Required.
  GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'unit': unit, 'value': value};
  }

  factory GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout(
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: pulumi.Input.fromValue(map['value'] as int),
    );
  }
}
