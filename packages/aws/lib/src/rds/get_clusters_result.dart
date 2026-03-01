// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_filter.dart';

/// Result data returned by getClusters.
class GetClustersResult {
  /// Set of cluster ARNs of the matched RDS clusters.
  final List<String> clusterArns;

  /// Set of ARNs of cluster identifiers of the matched RDS clusters.
  final List<String> clusterIdentifiers;
  final List<GetClustersFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetClustersResult].
  /// [clusterArns] Set of cluster ARNs of the matched RDS clusters.
  /// [clusterIdentifiers] Set of ARNs of cluster identifiers of the matched RDS clusters.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetClustersResult({
    required this.clusterArns,
    required this.clusterIdentifiers,
    this.filters,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArns': clusterArns,
      'clusterIdentifiers': clusterIdentifiers,
      'filters': ?filters == null
          ? null
          : pulumi.Input.encodeList<GetClustersFilter, Map<String, dynamic>>(
              filters!,
              (value) => value.toMap(),
            ),
      'id': id,
      'region': region,
    };
  }

  factory GetClustersResult.fromMap(Map<String, dynamic> map) {
    return GetClustersResult(
      clusterArns: (map['clusterArns'] as List).cast<String>(),
      clusterIdentifiers: (map['clusterIdentifiers'] as List).cast<String>(),
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetClustersFilter>(
              map['filters'],
              (value) => GetClustersFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
