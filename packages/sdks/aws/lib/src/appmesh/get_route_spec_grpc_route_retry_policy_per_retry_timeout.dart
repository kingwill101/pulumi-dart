// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteSpecGrpcRouteRetryPolicyPerRetryTimeout {
  final pulumi.Input<String> unit;
  final pulumi.Input<int> value;

  /// Creates a new [GetRouteSpecGrpcRouteRetryPolicyPerRetryTimeout].
  /// [unit] Required.
  /// [value] Required.
  GetRouteSpecGrpcRouteRetryPolicyPerRetryTimeout({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory GetRouteSpecGrpcRouteRetryPolicyPerRetryTimeout.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecGrpcRouteRetryPolicyPerRetryTimeout(
      unit: (map['unit'] as String).input(),
      value: (map['value'] as int).input(),
    );
  }
}

