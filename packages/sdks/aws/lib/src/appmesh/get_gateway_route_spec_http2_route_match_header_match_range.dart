// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayRouteSpecHttp2RouteMatchHeaderMatchRange {
  final pulumi.Input<int> end;
  final pulumi.Input<int> start;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteMatchHeaderMatchRange].
  /// [end] Required.
  /// [start] Required.
  GetGatewayRouteSpecHttp2RouteMatchHeaderMatchRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory GetGatewayRouteSpecHttp2RouteMatchHeaderMatchRange.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteMatchHeaderMatchRange(
      end: (map['end'] as int).input(),
      start: (map['start'] as int).input(),
    );
  }
}

