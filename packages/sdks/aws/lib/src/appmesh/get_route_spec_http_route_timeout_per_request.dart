// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteSpecHttpRouteTimeoutPerRequest {
  final pulumi.Input<String> unit;
  final pulumi.Input<int> value;

  /// Creates a new [GetRouteSpecHttpRouteTimeoutPerRequest].
  /// [unit] Required.
  /// [value] Required.
  GetRouteSpecHttpRouteTimeoutPerRequest({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory GetRouteSpecHttpRouteTimeoutPerRequest.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteTimeoutPerRequest(
      unit: (map['unit'] as String).input(),
      value: (map['value'] as int).input(),
    );
  }
}

