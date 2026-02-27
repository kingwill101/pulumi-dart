// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_clusters_filter/get_clusters_filter.dart';

/// Arguments for getClusters.
class GetClustersRdsArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetClustersFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetClustersRdsArgs({
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetClustersFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              pulumi.Input.encodeList<GetClustersFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetClustersRdsArgs.fromMap(Map<String, dynamic> map) {
    return GetClustersRdsArgs(
      filters:
          pulumi.Input.asOptionalInput<List<GetClustersFilter>>(map['filters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
