// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_grpc_route_match_metadata_match_range.dart';

class GetRouteSpecGrpcRouteMatchMetadataMatch {
  final pulumi.Input<String> exact;
  final pulumi.Input<String> prefix;
  final pulumi.Input<List<GetRouteSpecGrpcRouteMatchMetadataMatchRange>> ranges;
  final pulumi.Input<String> regex;
  final pulumi.Input<String> suffix;

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
    return <String, dynamic>{
      'exact': exact,
      'prefix': prefix,
      'ranges':
          pulumi.Input.mapInputValue<
            List<GetRouteSpecGrpcRouteMatchMetadataMatchRange>,
            List<Map<String, dynamic>>
          >(
            ranges,
            (value) =>
                pulumi.Input.encodeList<
                  GetRouteSpecGrpcRouteMatchMetadataMatchRange,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'regex': regex,
      'suffix': suffix,
    };
  }

  factory GetRouteSpecGrpcRouteMatchMetadataMatch.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRouteSpecGrpcRouteMatchMetadataMatch(
      exact: pulumi.Input.fromValue(map['exact'] as String),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      ranges: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetRouteSpecGrpcRouteMatchMetadataMatchRange>(
          map['ranges']!,
          (value) => GetRouteSpecGrpcRouteMatchMetadataMatchRange.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      regex: pulumi.Input.fromValue(map['regex'] as String),
      suffix: pulumi.Input.fromValue(map['suffix'] as String),
    );
  }
}
