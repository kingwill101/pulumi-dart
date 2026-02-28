// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http_route_match_header_match_range.dart';

class GetGatewayRouteSpecHttpRouteMatchHeaderMatch {
  final String exact;
  final String prefix;
  final List<GetGatewayRouteSpecHttpRouteMatchHeaderMatchRange> ranges;
  final String regex;
  final String suffix;

  /// Creates a new [GetGatewayRouteSpecHttpRouteMatchHeaderMatch].
  /// [exact] Required.
  /// [prefix] Required.
  /// [ranges] Required.
  /// [regex] Required.
  /// [suffix] Required.
  GetGatewayRouteSpecHttpRouteMatchHeaderMatch({
    required this.exact,
    required this.prefix,
    required this.ranges,
    required this.regex,
    required this.suffix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exact'] = exact;
    map['prefix'] = prefix;
    map['ranges'] = pulumi.Input.encodeList<
        GetGatewayRouteSpecHttpRouteMatchHeaderMatchRange,
        Map<String, dynamic>>(ranges, (value) => value.toMap());
    map['regex'] = regex;
    map['suffix'] = suffix;
    return map;
  }

  factory GetGatewayRouteSpecHttpRouteMatchHeaderMatch.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteMatchHeaderMatch(
      exact: map['exact'] as String,
      prefix: map['prefix'] as String,
      ranges: pulumi.Input.decodeList<
              GetGatewayRouteSpecHttpRouteMatchHeaderMatchRange>(
          map['ranges'],
          (value) => GetGatewayRouteSpecHttpRouteMatchHeaderMatchRange.fromMap(
              (value as Map).cast<String, dynamic>())),
      regex: map['regex'] as String,
      suffix: map['suffix'] as String,
    );
  }
}
