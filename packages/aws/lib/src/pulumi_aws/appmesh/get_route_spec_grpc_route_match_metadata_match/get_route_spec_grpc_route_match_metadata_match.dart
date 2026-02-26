// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_route_spec_grpc_route_match_metadata_match_range/get_route_spec_grpc_route_match_metadata_match_range.dart';

class GetRouteSpecGrpcRouteMatchMetadataMatch {
  final String exact;
  final String prefix;
  final List<GetRouteSpecGrpcRouteMatchMetadataMatchRange> ranges;
  final String regex;
  final String suffix;

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
    map['ranges'] = Input.encodeList<
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
      ranges: Input.decodeList<GetRouteSpecGrpcRouteMatchMetadataMatchRange>(
          map['ranges'],
          (value) => GetRouteSpecGrpcRouteMatchMetadataMatchRange.fromMap(
              (value as Map).cast<String, dynamic>())),
      regex: map['regex'] as String,
      suffix: map['suffix'] as String,
    );
  }
}
