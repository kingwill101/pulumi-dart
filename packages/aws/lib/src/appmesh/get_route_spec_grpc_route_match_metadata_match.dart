// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_grpc_route_match_metadata_match_range.dart';

class GetRouteSpecGrpcRouteMatchMetadataMatch {
  final String exact;
  final String prefix;
  final List<GetRouteSpecGrpcRouteMatchMetadataMatchRange> ranges;
  final String regex;
  final String suffix;

  /// Creates a new [GetRouteSpecGrpcRouteMatchMetadataMatch].
  /// [exact] Required.
  /// [prefix] Required.
  /// [ranges] Required.
  /// [regex] Required.
  /// [suffix] Required.
  GetRouteSpecGrpcRouteMatchMetadataMatch({
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
        GetRouteSpecGrpcRouteMatchMetadataMatchRange,
        Map<String, dynamic>>(ranges, (value) => value.toMap());
    map['regex'] = regex;
    map['suffix'] = suffix;
    return map;
  }

  factory GetRouteSpecGrpcRouteMatchMetadataMatch.fromMap(
      Map<String, dynamic> map) {
    return GetRouteSpecGrpcRouteMatchMetadataMatch(
      exact: map['exact'] as String,
      prefix: map['prefix'] as String,
      ranges:
          pulumi.Input.decodeList<GetRouteSpecGrpcRouteMatchMetadataMatchRange>(
              map['ranges'],
              (value) => GetRouteSpecGrpcRouteMatchMetadataMatchRange.fromMap(
                  (value as Map).cast<String, dynamic>())),
      regex: map['regex'] as String,
      suffix: map['suffix'] as String,
    );
  }
}
