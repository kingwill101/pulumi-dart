// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteSpecHttp2RouteTimeoutPerRequest {
  final pulumi.Input<String> unit;
  final pulumi.Input<int> value;

  /// Creates a new [GetRouteSpecHttp2RouteTimeoutPerRequest].
  /// [unit] Required.
  /// [value] Required.
  GetRouteSpecHttp2RouteTimeoutPerRequest({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory GetRouteSpecHttp2RouteTimeoutPerRequest.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteTimeoutPerRequest(
      unit: (map['unit'] as String).input(),
      value: (map['value'] as int).input(),
    );
  }
}

