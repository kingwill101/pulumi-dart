// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_clusters_filter/get_clusters_filter.dart';

/// Arguments for getClusters.
class GetClustersArgs3 {
  /// Configuration block(s) for filtering. Detailed below.
  final Input<List<GetClustersFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetClustersArgs3({
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetClustersFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetClustersFilter, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetClustersArgs3.fromMap(Map<String, dynamic> map) {
    return GetClustersArgs3(
      filters: Input.asOptionalInput<List<GetClustersFilter>>(map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
