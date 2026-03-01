// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_filter.dart';

/// {@template pulumi_rds_get_clusters_get_clusters_args_doc}
/// Arguments for getClusters.
/// {@endtemplate}
/// {@macro pulumi_rds_get_clusters_get_clusters_args_doc}
class GetClustersArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetClustersFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetClustersArgs].
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetClustersArgs({
    List<GetClustersFilter>? filters,
    String? region,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetClustersFilter>>(filters),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetClustersFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetClustersFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory GetClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetClustersArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetClustersFilter>(map['filters'], (value) => GetClustersFilter.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

