// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_clusters_filter/get_clusters_filter.dart';

/// Result data returned by getClusters.
class GetClustersResult3 {
  /// Set of cluster ARNs of the matched RDS clusters.
  final List<String> clusterArns;

  /// Set of ARNs of cluster identifiers of the matched RDS clusters.
  final List<String> clusterIdentifiers;
  final List<GetClustersFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  GetClustersResult3({
    required this.clusterArns,
    required this.clusterIdentifiers,
    this.filters,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterArns'] = clusterArns;
    map['clusterIdentifiers'] = clusterIdentifiers;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetClustersFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetClustersResult3.fromMap(Map<String, dynamic> map) {
    return GetClustersResult3(
      clusterArns: (map['clusterArns'] as List).cast<String>(),
      clusterIdentifiers: (map['clusterIdentifiers'] as List).cast<String>(),
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetClustersFilter>(
              map['filters'],
              (value) => GetClustersFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
